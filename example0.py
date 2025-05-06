import json

from lean_interact import Command, LeanREPLConfig, LeanServer, LocalProject

import trinity.spec as S
from trinity.decider import ProofDecider
from trinity.enumerator import DepthFirstEnumerator
from trinity.interpreter import ProofBuilderInterpreter
from trinity.logger import get_logger
from trinity.synthesizer import Synthesizer

logger = get_logger("trinity")


def build_lean_runner():
    config = LeanREPLConfig(project=LocalProject("./benchmarks/"))
    server = LeanServer(config)
    res0 = server.run(
        Command(
            cmd="""import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat"""
        )
    )
    assert not res0.has_errors(), "lean runner setup failed"
    # define a runner function and return
    return lambda x: server.run(Command(cmd=x, env=res0.env))


def build_spec(meta_spec):
    spec = ""

    for ky in meta_spec["enums"].keys():
        vs = meta_spec["enums"][ky]
        spec += f"enum {ky}" + " { " + ", ".join([f'"{p}"' for p in vs]) + " }\n"

    for ky in meta_spec["values"].keys():
        spec += f"value {ky};\n"

    prog = meta_spec["program"]
    spec += f"program {prog[0]}({prog[1]}) -> {", ".join(prog[2])};\n"

    for ky in meta_spec["funcs"].keys():
        vs = meta_spec["funcs"][ky]
        spec += f"func {ky}: {vs[0]} -> {", ".join(vs[1])};\n"

    return spec


# extract propositions (hypotheses) from a proof sketch
def extract_props(proof_sketch):
    props = []
    for line in proof_sketch.split("\n"):
        if line.startswith("  (h"):
            p = line[3 : line.index(":")].strip()
            props.append(p)
    return props


def main():
    # load an example benchmark
    # with open("./benchmarks/minif2f/mathd_algebra_160/step0.lean", "r") as f:
    # with open("./benchmarks/minif2f/mathd_algebra_24/step3.lean", "r") as f:
    # with open("./benchmarks/minif2f/demos/demo0.lean", "r") as f:
    with open("./benchmarks/minif2f/demos/demo1.lean", "r") as f:
        raw_lines = f.readlines()
    # remove the line with "hole" keyword
    raw_lines = [p for p in raw_lines if "hole" not in p]
    proof_sketch = "\n".join(raw_lines)
    # remove headings of the proof sketch
    proof_sketch = proof_sketch[proof_sketch.index("example") :]
    props = extract_props(proof_sketch)

    logger.info("Building synthesizer...")
    with open("./specs/example0.json", "r") as f:
        meta_spec = json.load(f)
    # add props
    meta_spec["enums"]["Prop"] = props
    # override proof terms
    meta_spec["enums"]["ProofTerm"] = (
        meta_spec["enums"]["Prop"] + meta_spec["enums"]["Theorem"]
    )
    spec = build_spec(meta_spec)
    logger.info(f"Spec is:\n{spec}")
    spec = S.parse(spec)

    logger.info("Building lean runner...")
    lean_runner = build_lean_runner()
    logger.info("Lean runner builds successfully!")

    synthesizer = Synthesizer(
        enumerator=DepthFirstEnumerator(spec=spec, max_depth=5),
        decider=ProofDecider(
            ProofBuilderInterpreter(top_indent=1),
            proof_sketch=proof_sketch,
            lean_runner=lean_runner,
        ),
    )

    logger.info("Synthesis starts...")
    prog = synthesizer.synthesize()
    if prog is not None:
        logger.info(f"A solution is found: {prog}")
    else:
        logger.info("Cannot find a solution.")


if __name__ == "__main__":
    logger.setLevel("DEBUG")
    main()
