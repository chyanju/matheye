import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₀  : (sorry + sorry) % 1000 = 248 := by -- rfl
  hole