import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h1₁ (x : ℝ) : (x + 1) ^ 2 = x ^ 2 + 2 * x + 1 := by -- ring
  hole