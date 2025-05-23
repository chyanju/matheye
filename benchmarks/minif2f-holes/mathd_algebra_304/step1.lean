import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_algebra_304  : 91 ^ 2 = 8281 :=
  by
  have h₀ : 91 ^ 2 = 8281 := by sorry
  --  apply h₀
  hole