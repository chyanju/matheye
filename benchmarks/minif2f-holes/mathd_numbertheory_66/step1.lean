import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_numbertheory_66  : 194 % 11 = 7 :=
  by
  have h₁ : 11 * 17 = 187 := by sorry
  have h₂ : 194 = 11 * 17 + 7 := by sorry
  have h₃ : 194 % 11 = 7 := by sorry
  --  exact h₃
  hole