from lean_interact import LeanREPLConfig, LeanServer, Command, TempRequireProject

config = LeanREPLConfig(verbose=True, project=TempRequireProject("mathlib")) # download and build Lean REPL
server = LeanServer(config) # start Lean REPL

cmddd="""import Mathlib
"""

response = server.run(Command(cmd=cmddd))
print(response)
response = server.run(Command(cmd="#check 1+1"))
print(response)
# Execute with options to get tactics information
response = server.run(Command(cmd="theorem ex (n : Nat) : n = 5 → n = 5 := by simp"))
print(response)

response = server.run(Command(cmd="import Mathlib\ntheorem test_add_zero (x : ℝ) : x + 0 = x := by\n  rw [add_zero]\n"))
print(response)


# Continue in the same environment
# response = server.run(Command(cmd="#check ex", env=response.env))
# print(response)