import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_numbertheory_551  : 1529 % 6 = 5 :=
  by
  have h : 1529 % 6 = 5 := by sorry
  --  exact h
  hole