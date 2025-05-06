from .post_order import PostOrderInterpreter

class ProofBuilderInterpreter(PostOrderInterpreter):
    
    def __init__(self, indent=1):
        super().__init__()
        self.indent = indent
        
    def render_indent(self):
        return ' '*self.indent
    
    def eval_linarith(self, node, args):
        proof = args[0].rstrip("\n")
        return f"{proof}\n{self.render_indent()}linarith"
    
    def eval_norm_num(self, node, args):
        proof = args[0].rstrip("\n")
        return f"{proof}\n{self.render_indent()}norm_num"