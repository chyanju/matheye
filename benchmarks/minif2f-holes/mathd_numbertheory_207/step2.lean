import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁  : 9 ^ 2 = 81 := by -- norm_num <;> rfl
  hole