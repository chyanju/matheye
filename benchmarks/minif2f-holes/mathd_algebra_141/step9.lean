import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₇ (a b : ℝ) (h₁ : a * b = 180) (h₂ : 2 * (a + b) = 54) (h₃ : a + b = 27) (h₄ : (a + b) ^ 2 = 729) (h₅ : a ^ 2 + b ^ 2 + 2 * (a * b) = 729) (h₆ : a ^ 2 + b ^ 2 + 2 * 180 = 729) : a ^ 2 + b ^ 2 = 369 := by
  have h₇₁ : a ^ 2 + b ^ 2 + 2 * 180 = 729 := h₆
  have h₇₂ : a ^ 2 + b ^ 2 = 369 := by sorry
  --  exact h₇₂
  hole