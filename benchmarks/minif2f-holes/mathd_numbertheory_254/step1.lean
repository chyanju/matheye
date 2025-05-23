import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_numbertheory_254  : (239 + 174 + 83) % 10 = 6 :=
  by
  have h₁ : (239 + 174 + 83) % 10 = 6 := by sorry
  --  apply h₁
  hole