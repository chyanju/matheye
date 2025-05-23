import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₅₂₅ (a : ℝ) (h₀ : 0 < a) (h₁ : 1 / a - (↑⌊1 / a⌋ : ℝ) = a ^ 2 - (↑⌊a ^ 2⌋ : ℝ)) (h₂ : 2 < a ^ 2) (h₃ : a ^ 2 < 3) (h₄ : ⌊a ^ 2⌋ = 2) (h₅₁ : 0 < 1 / a) (h₅₂₁ : 0 < a) (h₅₂₂ : 0 < a ^ 2) (h₅₂₃ : a ^ 2 < 3) (h₅₂₄ : 2 < a ^ 2) : a > 1 := by
  --  by_contra h
  have h₅₂₆ : a ≤ 1 := by sorry
  have h₅₂₇ : a ^ 2 ≤ 1 := by sorry
  --  linarith
  hole