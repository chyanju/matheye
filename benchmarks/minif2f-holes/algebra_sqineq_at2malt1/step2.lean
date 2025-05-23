import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₀ (a : ℝ) : a * (2 - a) = 2 * a - a ^ 2 := by -- ring_nf <;> linarith
  hole