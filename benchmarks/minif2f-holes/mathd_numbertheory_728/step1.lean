import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_numbertheory_728  : (29 ^ 13 - 5 ^ 13) % 7 = 3 :=
  by
  have h₁ : 29 ^ 13 % 7 = 1 := by sorry
  have h₂ : 5 ^ 13 % 7 = 5 := by sorry
  have h₃ : (29 ^ 13 - 5 ^ 13) % 7 = 3 := by sorry
  --  apply h₃
  hole