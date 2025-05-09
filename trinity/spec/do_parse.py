from .desugar import desugar
from .parser import Lark_StandAlone

# This has to be global since Lark_StandAlone() is not re-entrant.
# See https://github.com/lark-parser/lark/issues/299
parser = Lark_StandAlone()


def parse(input_str):
    """
    Parse Trinity spec from an input string.
    May raise either ``ParseError`` or ``ParseTreeProcessingError``.
    """
    parse_tree = parser.parse(input_str)
    return desugar(parse_tree)


def parse_file(file_path):
    """
    Parse Trinity spec from an input file path.
    May raise either ``ParseError`` or ``ParseTreeProcessingError``.
    """
    with open(file_path, "r") as f:
        spec_str = f.read()
    return parse(spec_str)
