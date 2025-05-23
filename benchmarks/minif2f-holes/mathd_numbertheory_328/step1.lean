import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_numbertheory_328  : 5 ^ 999999 % 7 = 6 :=
  by
  have h1 : 5 ^ 6 % 7 = 1 := by sorry
  have h2 : 999999 = 6 * 166666 + 3 := by sorry
  have h3 : 5 ^ 999999 % 7 = 6 := by sorry
  --  apply h3
  hole