import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h5 (h1 : 3 ^ 3 = 27) (h2 : 3 ^ 2 = 9) (h3 : 1 * 3 ^ 3 = 27) (h4 : 2 * 3 ^ 2 = 18) : 2 * 3 = 6 := by -- norm_num
  hole