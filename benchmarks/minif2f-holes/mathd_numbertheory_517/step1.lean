import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_numbertheory_517  : 121 * 122 * 123 % 4 = 2 :=
  by
  have h₁ : 121 % 4 = 1 := by sorry
  have h₂ : 122 % 4 = 2 := by sorry
  have h₃ : 123 % 4 = 3 := by sorry
  have h₄ : 121 * 122 * 123 % 4 = 2 := by sorry
  --  apply h₄
  hole