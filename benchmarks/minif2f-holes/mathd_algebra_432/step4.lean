import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h1 (x : ℝ) (h_expand : (x + 3) * (2 * x - 6) = 2 * x ^ 2 - 6 * x + 6 * x - 18) : 2 * x ^ 2 - 6 * x + 6 * x - 18 = 2 * x ^ 2 - 18 := by -- ring_nf <;> linarith
  hole