import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₀  : 1 * 3 * 5 * 7 * 9 * 11 * 13 % 10 = 5 := by
  --  norm_num [mul_assoc, Nat.mul_mod, Nat.add_mod, Nat.mod_mod, Nat.mod_eq_of_lt, Nat.mod_eq_of_lt, Nat.mod_eq_of_lt,
  --      Nat.mod_eq_of_lt, Nat.mod_eq_of_lt, Nat.mod_eq_of_lt, Nat.mod_eq_of_lt] <;>
    rfl
  hole