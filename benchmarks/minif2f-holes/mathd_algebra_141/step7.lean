import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₆ (a b : ℝ) (h₁ : a * b = 180) (h₂ : 2 * (a + b) = 54) (h₃ : a + b = 27) (h₄ : (a + b) ^ 2 = 729) (h₅ : a ^ 2 + b ^ 2 + 2 * (a * b) = 729) : a ^ 2 + b ^ 2 + 2 * 180 = 729 :=
  by
  have h₆₁ : a ^ 2 + b ^ 2 + 2 * (a * b) = 729 := h₅
  have h₆₂ : a * b = 180 := h₁
  have h₆₃ : a ^ 2 + b ^ 2 + 2 * 180 = 729 := by sorry
  --  exact h₆₃
  hole