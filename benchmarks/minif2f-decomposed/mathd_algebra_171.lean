import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- Consider the function $f(x)=5x+4$.  What is $f(1)$? Show that it is 9.-/
theorem mathd_algebra_171 (f : ℝ → ℝ) (h₀ : ∀ x, f x = 5 * x + 4) : f 1 = 9 := by
  have h₁ : f 1 = 5 * (1 : ℝ) + 4 := by
    have h₁₀ : f 1 = 5 * (1 : ℝ) + 4 := by
      rw [h₀]
      <;> norm_num
    exact h₁₀
  
  have h₂ : f 1 = 9 := by
    rw [h₁]
    <;> norm_num
    <;> linarith
  
  exact h₂
