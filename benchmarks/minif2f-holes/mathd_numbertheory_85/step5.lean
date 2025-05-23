import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h4 (h1 : 3 ^ 3 = 27) (h2 : 3 ^ 2 = 9) (h3 : 1 * 3 ^ 3 = 27) : 2 * 3 ^ 2 = 18 := by -- norm_num [h2]
  hole