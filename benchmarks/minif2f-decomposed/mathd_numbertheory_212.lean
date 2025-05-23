import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- Find the units digit of $16^{17} \times 17^{18} \times 18^{19}$. Show that it is 8.-/
theorem mathd_numbertheory_212 : 16 ^ 17 * 17 ^ 18 * 18 ^ 19 % 10 = 8 := by
  have h1 : 16 ^ 17 % 10 = 6 := by
    norm_num [pow_succ, Nat.mul_mod, Nat.pow_mod, Nat.mod_mod]
    <;> rfl
  
  have h2 : 17 ^ 18 % 10 = 9 := by
    norm_num [pow_succ, Nat.mul_mod, Nat.pow_mod, Nat.mod_mod]
    <;> rfl
  
  have h3 : 18 ^ 19 % 10 = 2 := by
    norm_num [pow_succ, Nat.mul_mod, Nat.pow_mod, Nat.mod_mod]
    <;> rfl
  
  have h4 : (16 ^ 17 * 17 ^ 18 * 18 ^ 19) % 10 = 8 := by
    have h5 : (16 ^ 17 * 17 ^ 18 * 18 ^ 19) % 10 = ((16 ^ 17 % 10) * (17 ^ 18 % 10) * (18 ^ 19 % 10)) % 10 := by
      norm_num [Nat.mul_mod, Nat.pow_mod, Nat.mod_mod]
      <;> ring_nf
      <;> norm_num [Nat.mul_mod, Nat.pow_mod, Nat.mod_mod]
      <;> rfl
    rw [h5]
    rw [h1, h2, h3]
    <;> norm_num
    <;> rfl
  
  exact h4
