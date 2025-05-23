import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃ (a b c d : ℝ) (h₀ : 0 < a ∧ 0 < b ∧ 0 < c ∧ 0 < d) (h₁ : a ^ 2 / b + b ≥ 2 * a) (h₂ : b ^ 2 / c + c ≥ 2 * b) : c ^ 2 / d + d ≥ 2 * c := by
  have h₃₁ : 0 < d := by sorry
  have h₃₂ : 0 < c := by sorry
  have h₃₃ : 0 < c ^ 2 / d := by sorry
  have h₃₄ : c ^ 2 / d * d = c ^ 2 := by sorry
  have h₃₅ : c ^ 2 / d + d ≥ 2 * c := by sorry
  --  exact h₃₅
  hole