import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃₅₁ (a b c d : ℝ) (h₀ : 0 < a ∧ 0 < b ∧ 0 < c ∧ 0 < d) (h₁ : a ^ 2 / b + b ≥ 2 * a) (h₂ : b ^ 2 / c + c ≥ 2 * b) (h₃₁ : 0 < d) (h₃₂ : 0 < c) (h₃₃ : 0 < c ^ 2 / d) (h₃₄ : c ^ 2 / d * d = c ^ 2) : 0 < c ^ 2 / d := by -- positivity
  hole