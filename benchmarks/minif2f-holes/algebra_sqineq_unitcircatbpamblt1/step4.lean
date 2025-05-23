import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃ (a b : ℝ) (h₀ : a ^ 2 + b ^ 2 = 1) (h₁ : a ^ 2 ≤ 1) (h₂ : b ^ 2 ≤ 1) : 1 - a ≥ 0 := by -- nlinarith [sq_nonneg a, sq_nonneg b, sq_nonneg (a - 1), sq_nonneg (b - 1)]
  hole