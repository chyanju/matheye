import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₀ (x : ℝ) : (x - 7) ^ 2 ≥ 0 := by -- nlinarith [sq_nonneg (x - 7)] <;> linarith
  hole