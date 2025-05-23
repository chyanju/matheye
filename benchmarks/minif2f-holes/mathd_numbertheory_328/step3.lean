import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h2 (h1 : 5 ^ 6 % 7 = 1) : 999999 = 6 * 166666 + 3 := by -- norm_num <;> rfl
  hole