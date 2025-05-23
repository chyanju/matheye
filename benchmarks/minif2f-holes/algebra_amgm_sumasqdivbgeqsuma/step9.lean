import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁₅₂ (a b c d : ℝ) (h₀ : 0 < a ∧ 0 < b ∧ 0 < c ∧ 0 < d) (h₁₁ : 0 < b) (h₁₂ : 0 < a) (h₁₃ : 0 < a ^ 2 / b) (h₁₄ : a ^ 2 / b * b = a ^ 2) (h₁₅₁ : 0 < a ^ 2 / b) : 0 < b := by -- linarith
  hole