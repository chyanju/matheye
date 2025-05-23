import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- Determine the remainder of 1529 (mod 6). Show that it is 5.-/
theorem mathd_numbertheory_551 : 1529 % 6 = 5 := by
  have h : 1529 % 6 = 5 := by
    norm_num [Nat.add_mod, Nat.mul_mod, Nat.mod_mod, Nat.mod_eq_of_lt]
    -- Use `norm_num` to compute and verify the result directly.
    <;> rfl
    <;> norm_num
    <;> rfl
  exact h
