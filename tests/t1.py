from lean_interact import LeanREPLConfig, LeanServer, Command, TempRequireProject

config = LeanREPLConfig(verbose=True, project=TempRequireProject("mathlib")) # download and build Lean REPL
server = LeanServer(config) # start Lean REPL

response = server.run(Command(cmd="import Mathlib")) #stucks here
print(response)

# Execute with options to get tactics information
response = server.run(Command(cmd="theorem ex (n : Nat) : n = 5 → n = 5 := by simp", all_tactics=True)) #works here
print(response)

# Continue in the same environment
# response = server.run(Command(cmd="#check ex", env=response.env))  #works here
# print(response)
