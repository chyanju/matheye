import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h_expand (x : ℝ) : (x + 3) * (2 * x - 6) = 2 * x ^ 2 - 6 * x + 6 * x - 18 := by -- ring_nf <;> linarith
  hole