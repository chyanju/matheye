import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₇₆ (a b c : ℝ) (h₀ : 0 < a ∧ 0 < b ∧ 0 < c) (h₁ : c < a + b) (h₂ : b < a + c) (h₃ : a < b + c) (h₄ : 0 < b + c - a) (h₅ : 0 < c + a - b) (h₆ : 0 < a + b - c) (h₇₁ : 0 < a) (h₇₂ : 0 < b) (h₇₃ : 0 < c) (h₇₄ : 0 < a * b) (h₇₅ : 0 < b * c) : 0 < c * a := by -- positivity
  hole