import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- A $3491$ by $3491$ square has its length decreased by $60$ and its width increased by $60$.  By how much does its area change? Show that it is 3600.-/
theorem mathd_algebra_296 : abs ((3491 - 60) * (3491 + 60) - 3491 ^ 2 : ℤ) = 3600 := by
  have h₁ : (3491 - 60 : ℕ) = 3431 := by
    norm_num
    <;> rfl
  
  have h₂ : (3491 + 60 : ℕ) = 3551 := by
    norm_num
    <;> rfl
  
  have h₃ : (3431 : ℕ) * 3551 = 12183481 := by
    norm_num
    <;> rfl
  
  have h₄ : (3491 : ℕ) ^ 2 = 12187081 := by
    norm_num [pow_two]
    <;> rfl
  
  have h₅ : ((3491 - 60) * (3491 + 60) - 3491 ^ 2 : ℤ) = -3600 := by
    have h₅₁ : ((3491 - 60) * (3491 + 60) - 3491 ^ 2 : ℤ) = -3600 := by
      norm_num [h₁, h₂, h₃, h₄, pow_two, Int.mul_emod, Int.add_emod, Int.sub_emod]
      <;> rfl
    rw [h₅₁]
    <;> rfl
  
  have h₆ : abs ((3491 - 60) * (3491 + 60) - 3491 ^ 2 : ℤ) = 3600 := by
    rw [h₅]
    <;> norm_num [abs_of_nonpos, abs_of_nonneg]
    <;> rfl
  
  apply h₆
