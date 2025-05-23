import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₆ (x y : ℝ) (n : NNReal) (h₀ : x < 0 ∧ y < 0) (h₁ : |y| = 6) (h₂ : √((x - 8) ^ 2 + (y - 3) ^ 2) = 15) (h₃ : √(x ^ 2 + y ^ 2) = √(↑n : ℝ)) (h₄ : y = -6) (h₅ : (x - 8) ^ 2 + (y - 3) ^ 2 = 225) : x = -4 := by
  have h₆₁ : y = -6 := h₄
  --  rw [h₆₁] at h₅
  have h₆₂ : (x - 8) ^ 2 + (-6 - 3 : ℝ) ^ 2 = 225 := by sorry
  have h₆₃ : (x - 8) ^ 2 = 144 := by sorry
  have h₆₄ : x - 8 = 12 ∨ x - 8 = -12 := by sorry
  --  cases h₆₄ with
  --  | inl h₆₄ =>
  --    have h₆₅ : x = 20 := by linarith
  --    have h₆₆ : x < 0 := h₀.1
  --    linarith
  --  | inr h₆₄ =>
  --    have h₆₅ : x = -4 := by linarith
  --    exact h₆₅
  hole