from typing import Any, Callable

from lean_interact import Command, LeanREPLConfig, LeanServer
from lean_interact.interface import CommandResponse

from ..dsl import Node
from ..interpreter import ProofBuilderInterpreter
from .decider import Decider
from .result import Result, bad, ok


class ProofDecider(Decider):

    def __init__(
        self,
        interpreter: ProofBuilderInterpreter,
        proof_sketch: str,
        lean_runner: Callable[[str], Any],
    ):
        super().__init__()
        self._interpreter = interpreter
        self._proof_sketch = proof_sketch
        self._lean_runner = lean_runner

    def check_proof(self, proof: str) -> CommandResponse:
        return self._lean_runner(proof)

    def analyze(self, ast: Node) -> Result:
        # build the proof by interpreting the ast
        proof = self._interpreter.eval(ast, [self._proof_sketch])
        response = self.check_proof(proof)
        if response.has_errors():
            return bad(why=response)
        else:
            return ok()
