import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₇₆ (a b c : ℝ) (h₀ : 0 < a ∧ 0 < b ∧ 0 < c) (h₁ : a * (b + c) = 152) (h₂ : b * (c + a) = 162) (h₃ : c * (a + b) = 170) (h₄ : a * b + a * c + b * c = 242) (h₅ : a * b = 72) (h₆ : a * c = 80) (h₇₁ : a * b + a * c = 152) (h₇₃ : b * c + b * a = 162) : c * a + c * b = c * (a + b) := by -- ring
  hole