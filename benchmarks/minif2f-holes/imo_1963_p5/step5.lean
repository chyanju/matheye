import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h1₁₂  : sin (2 * π / 7) = sin (2 * (π / 7)) := by -- ring
  hole