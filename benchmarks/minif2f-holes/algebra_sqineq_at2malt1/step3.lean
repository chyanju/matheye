import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁ (a : ℝ) (h₀ : a * (2 - a) = 2 * a - a ^ 2) : (a - 1) ^ 2 ≥ 0 := by -- nlinarith [sq_nonneg (a - 1)]
  hole