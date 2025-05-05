import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- Determine the remainder of 194 (mod 11). Show that it is 7.-/
theorem mathd_numbertheory_66 : 194 % 11 = 7 := by
  have h₁ : 11 * 17 = 187 := by
    norm_num
    <;> rfl
  
  have h₂ : 194 = 11 * 17 + 7 := by
    norm_num [h₁]
    <;> rfl
  
  have h₃ : 194 % 11 = 7 := by
    omega
  
  exact h₃
