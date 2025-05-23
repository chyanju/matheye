import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h1  : 5 ^ 6 % 7 = 1 := by -- norm_num <;> rfl
  hole