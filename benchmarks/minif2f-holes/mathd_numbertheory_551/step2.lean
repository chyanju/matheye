import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h  : 1529 % 6 = 5 := by
  --  norm_num [Nat.add_mod, Nat.mul_mod, Nat.mod_mod, Nat.mod_eq_of_lt] <;> rfl <;> norm_num <;> rfl
  hole