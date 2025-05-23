import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h1  : 3 ^ 3 = 27 := by -- norm_num
  hole