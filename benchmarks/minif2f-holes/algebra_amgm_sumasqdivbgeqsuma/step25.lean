import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃₅ (a b c d : ℝ) (h₀ : 0 < a ∧ 0 < b ∧ 0 < c ∧ 0 < d) (h₁ : a ^ 2 / b + b ≥ 2 * a) (h₂ : b ^ 2 / c + c ≥ 2 * b) (h₃₁ : 0 < d) (h₃₂ : 0 < c) (h₃₃ : 0 < c ^ 2 / d) (h₃₄ : c ^ 2 / d * d = c ^ 2) : c ^ 2 / d + d ≥ 2 * c := by
  have h₃₅₁ : 0 < c ^ 2 / d := by sorry
  have h₃₅₂ : 0 < d := by sorry
  have h₃₅₃ : 0 < c ^ 2 / d * d := by sorry
  --  nlinarith [sq_nonneg (c - d), sq_nonneg (c ^ 2 / d - d), sq_nonneg (c ^ 2 / d - c), sq_nonneg (d - c)]
  hole