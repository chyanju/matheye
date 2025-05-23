import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₇ (a b : ℝ) (h₀ : a ^ 2 + b ^ 2 = 1) (h₁ : a ^ 2 ≤ 1) (h₂ : b ^ 2 ≤ 1) (h₃ : 1 - a ≥ 0) (h₄ : 1 + b ≥ 0) (h₅ : (1 - a) * (1 + b) ≥ 0) : (1 - a) * (1 + b) = 1 - a + b - a * b := by -- ring
  hole