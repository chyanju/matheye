import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (a b : ℝ) (h₀ : a ^ 2 + b ^ 2 = 1) (h₁ : a ^ 2 ≤ 1) : b ^ 2 ≤ 1 := by -- nlinarith [sq_nonneg a]
  hole