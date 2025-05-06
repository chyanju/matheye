from .post_order import PostOrderInterpreter

class ProofBuilderInterpreter(PostOrderInterpreter):
    
    def __init__(self, top_indent=1):
        super().__init__()
        self.top_indent = top_indent
        
    def render_indent(self, indent):
        return ' '*indent
    
    def indented_append(self, proof, indent, content):
        _proof = proof.rstrip("\n")
        _indent = self.render_indent(indent)
        return f"{_proof}\n{_indent}{content}"
    
    def eval_linarith(self, node, args):
        return self.indented_append(args[0], self.top_indent, "linarith")
    
    def eval_norm_num(self, node, args):
        return self.indented_append(args[0], self.top_indent, "norm_num")
    
    def eval_omega(self, node, args):
        return self.indented_append(args[0], self.top_indent, "omega")
    
    def eval_ring(self, node, args):
        return self.indented_append(args[0], self.top_indent, "ring")
    
    def eval_ring_nf(self, node, args):
        return self.indented_append(args[0], self.top_indent, "ring_nf")
    
    def eval_exact(self, node, args):
        return self.indented_append(args[0], self.top_indent, f"exact {args[1]}")
    
    def eval_rw1(self, node, args):
        return self.indented_append(args[0], self.top_indent, f"rw [{args[1]}]")