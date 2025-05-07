from typing import Union

import sexpdata

from ..spec import EnumType, Production, TrinitySpec
from ..visitor import GenericVisitor
from .node import *


class ProductionVisitor(GenericVisitor):

    def __init__(self, children: List[Node]):
        self._children = children

    def visit_enum_production(self, prod) -> Node:
        return AtomNode(prod)

    def visit_param_production(self, prod) -> Node:
        return ParamNode(prod)

    def visit_function_production(self, prod) -> Node:
        return ApplyNode(prod, self._children)


class Builder:
    """A factory class to build AST node"""

    def __init__(self, spec: TrinitySpec):
        self._spec = spec

    def _make_node(self, prod: Production, children: List[Node] = []) -> Node:
        return ProductionVisitor(children).visit(prod)

    def make_node(self, src: Union[int, Production], children: List[Node] = []) -> Node:
        """
        Create a node with the given production index and children.
        Raise `KeyError` or `ValueError` if an error occurs
        """
        if isinstance(src, int):
            return self._make_node(self._spec.get_production_or_raise(src), children)
        elif isinstance(src, Production):
            # Sanity check first
            prod = self._spec.get_production_or_raise(src.id)
            if src != prod:
                raise ValueError("DSL Builder found inconsistent production instance")
            return self._make_node(prod, children)
        else:
            raise ValueError(
                "make_node() only accepts int or production, but found {}".format(src)
            )

    def make_enum(self, name: str, value: str) -> Node:
        """
        Convenient method to create an enum node.
        Raise `KeyError` or `ValueError` if an error occurs
        """
        ty = self.get_type_or_raise(name)
        prod = self.get_enum_production_or_raise(ty, value)
        return self.make_node(prod.id)

    def make_param(self, index: int) -> Node:
        """
        Convenient method to create a param node.
        Raise `KeyError` or `ValueError` if an error occurs
        """
        prod = self.get_param_production_or_raise(index)
        return self.make_node(prod.id)

    def make_apply(self, name: str, args: List[Node]) -> Node:
        """
        Convenient method to create an apply node.
        Raise `KeyError` or `ValueError` if an error occurs
        """
        prod = self.get_function_production_or_raise(name)
        return self.make_node(prod.id, args)

    # def from_jsonexp(self, jsonexp: List) -> Node:
    #     match jsonexp:
    #         case [f, *rs] if isinstance(f, str):
    #             fprod = self._spec.get_function_production(f)
    #             assert len(fprod.rhs) == len(
    #                 args
    #             ), f"invalid number of arguments for {f}"
    #             args = [self.from_jsonexp(p) for p in rs]
    #             fnode = self.make_node(fprod, args)
    #             return fnode
    #         case _:
    #             raise Exception(f"unsupported jsonexp shape: {jsonexp}")

    # For convenience, expose all methods in TrinitySpec so that the client do not need to keep a reference of it
    def __getattr__(self, attr):
        return getattr(self._spec, attr)
