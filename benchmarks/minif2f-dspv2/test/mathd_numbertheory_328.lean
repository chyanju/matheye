import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- What is the remainder when 5 to the 999,999th power is divided by 7? Show that it is 6.-/
theorem mathd_numbertheory_328 : 5 ^ 999999 % 7 = 6 := by
  have h1 : 5 ^ 6 % 7 = 1 := by
    norm_num
    <;> rfl
  
  have h2 : 999999 = 6 * 166666 + 3 := by
    norm_num
    <;> rfl
  
  have h3 : 5 ^ 999999 % 7 = 6 := by
    rw [h2]
    rw [show 5 ^ (6 * 166666 + 3) = (5 ^ 6) ^ 166666 * 5 ^ 3 by
      rw [pow_add, pow_mul]
      <;> ring_nf]
    rw [show ((5 ^ 6) ^ 166666 * 5 ^ 3) % 7 = ((5 ^ 6 % 7) ^ 166666 * (5 ^ 3 % 7)) % 7 by
      simp [Nat.pow_mod, Nat.mul_mod, Nat.pow_add, Nat.pow_mul, Nat.mod_mod]]
    rw [h1]
    norm_num
    <;> rfl
  
  apply h3
