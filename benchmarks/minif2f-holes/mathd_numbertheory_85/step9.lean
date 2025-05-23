import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h8 (h1 : 3 ^ 3 = 27) (h2 : 3 ^ 2 = 9) (h3 : 1 * 3 ^ 3 = 27) (h4 : 2 * 3 ^ 2 = 18) (h5 : 2 * 3 = 6) (h6 : 1 * 3 ^ 3 + 2 * 3 ^ 2 = 45) (h7 : 1 * 3 ^ 3 + 2 * 3 ^ 2 + 2 * 3 = 51) : 1 * 3 ^ 3 + 2 * 3 ^ 2 + 2 * 3 + 2 = 53 := by -- norm_num [h7]
  hole