import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₀₁  : Real.log 27 = Real.log (3 ^ 3) := by -- norm_num
  hole