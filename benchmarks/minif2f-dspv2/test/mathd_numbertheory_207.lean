import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- Convert $852_9$ to base 10. Show that it is 695.-/
theorem mathd_numbertheory_207 : 8 * 9 ^ 2 + 5 * 9 + 2 = 695 := by
  have h₁ : 9 ^ 2 = 81 := by
    norm_num
    <;> rfl
  
  have h₂ : 8 * 9 ^ 2 = 648 := by
    rw [h₁]
    <;> norm_num
    <;> rfl
  
  have h₃ : 5 * 9 = 45 := by
    norm_num
    <;> rfl
  
  have h₄ : 8 * 9 ^ 2 + 5 * 9 = 693 := by
    rw [h₂, h₃]
    <;> norm_num
    <;> rfl
  
  have h₅ : 8 * 9 ^ 2 + 5 * 9 + 2 = 695 := by
    rw [h₄]
    <;> norm_num
    <;> rfl
  
  rw [h₅]
  <;> norm_num
  <;> rfl
