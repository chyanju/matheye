import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₀  : 91 ^ 2 = 8281 := by
  --  norm_num [pow_two, Nat.mul_add, Nat.add_mul, Nat.mul_one, Nat.mul_zero, Nat.add_assoc] <;> rfl <;> simp_all <;>
      norm_num <;>
    rfl
  hole