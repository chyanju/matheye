from lean_interact import LeanREPLConfig, LeanServer, LocalProject, Command

import tyrell.spec as S
from tyrell.interpreter import ProofBuilderInterpreter
from tyrell.enumerator import ExhaustiveEnumerator
from tyrell.decider import ProofDecider
from tyrell.synthesizer import Synthesizer
from tyrell.logger import get_logger

logger = get_logger("tyrell")

def build_lean_runner():
    logger.info("Building lean runner...")
    config = LeanREPLConfig(project=LocalProject("./benchmarks/"))
    server = LeanServer(config)
    res0 = server.run(Command(cmd="""import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat"""))
    assert not res0.has_errors(), "lean runner setup failed"
    logger.info("Lean runner builds successfully!")
    # define a runner function and return
    return lambda x: server.run(Command(cmd=x, env=res0.env))

def main():
    # load an example benchmark
    with open("./benchmarks/minif2f/mathd_algebra_160/step0.lean", "r") as f:
        raw_lines = f.readlines()
    # remove the line with "hole" keyword
    raw_lines = [p for p in raw_lines if "hole" not in p]
    proof_sketch = "\n".join(raw_lines)
    # remove headings of the proof sketch
    proof_sketch = proof_sketch[proof_sketch.index("example"):]
    
    lean_runner = build_lean_runner()

    logger.info("Building synthesizer...")
    spec = S.parse_file("./specs/test.tyrell")
    synthesizer = Synthesizer(
        enumerator=ExhaustiveEnumerator(spec=spec, max_depth=2),
        decider=ProofDecider(
            ProofBuilderInterpreter(indent=1),
            proof_sketch=proof_sketch,
            lean_runner=lean_runner,
        )
    )
    
    logger.info("Synthesis starts...")
    prog = synthesizer.synthesize()
    if prog is not None:
        logger.info(f'A solution is found: {prog}')
    else:
        logger.info('Cannot find a solution.')
        
if __name__== "__main__":
    logger.setLevel("DEBUG")
    main()