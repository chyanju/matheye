import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- Compute $91^2$ in your head. Show that it is 8281.-/
theorem mathd_algebra_304 : 91 ^ 2 = 8281 := by
  have h₀ : 91 ^ 2 = 8281 := by
    norm_num [pow_two, Nat.mul_add, Nat.add_mul, Nat.mul_one, Nat.mul_zero, Nat.add_assoc]
    <;> rfl
    <;> simp_all
    <;> norm_num
    <;> rfl
  
  apply h₀
