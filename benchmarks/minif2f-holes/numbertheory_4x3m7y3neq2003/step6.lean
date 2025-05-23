import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (x y : ℤ) (h₂ : (4 * x ^ 3 - 7 * y ^ 3) % 7 = 4 * x ^ 3 % 7 - 7 * y ^ 3 % 7) : 7 % 7 = 0 := by -- norm_num
  hole