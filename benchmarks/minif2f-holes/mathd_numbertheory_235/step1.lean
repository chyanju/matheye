import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_numbertheory_235  : (29 * 79 + 31 * 81) % 10 = 2 :=
  by
  have h1 : (29 * 79 + 31 * 81) % 10 = 2 := by sorry
  --  exact h1
  hole