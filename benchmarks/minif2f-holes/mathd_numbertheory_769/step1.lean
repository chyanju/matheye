import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_numbertheory_769  : (129 ^ 34 + 96 ^ 38) % 11 = 9 :=
  by
  have h1 : (129 ^ 34 + 96 ^ 38) % 11 = 9 := by sorry
  --  exact h1
  hole