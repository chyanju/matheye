import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (f : ℚ → ℝ) (h₀ : ∀ x > 0, ∀ y > 0, f (x * y) = f x + f y) (h₁ : ∀ (p : ℕ), Nat.Prime p → f (↑p : ℚ) = (↑p : ℝ)) (h₂ : f 1 = 0) (h₃ : f 5 = 5) : f 25 = 10 :=
  by
  have h₄₁ : f (25 : ℚ) = f (5 * 5 : ℚ) := by sorry
  --  rw [h₄₁]
  have h₄₂ : f (5 * 5 : ℚ) = f (5 : ℚ) + f (5 : ℚ) := h₀ 5 (by norm_num) 5 (by norm_num)
  --  rw [h₄₂]
  --  norm_num [h₃] <;> linarith
  hole