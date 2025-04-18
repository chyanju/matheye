from lean_interact import LeanREPLConfig, LeanServer, Command

config = LeanREPLConfig(verbose=True) # download and build Lean REPL
server = LeanServer(config) # start Lean REPL
server.run(Command(cmd="theorem ex (n : Nat) : n = 5 → n = 5 := id"))