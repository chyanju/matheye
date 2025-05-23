import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_algebra_484  : Real.log 27 / Real.log 3 = 3 :=
  by
  have h₀ : Real.log 27 = 3 * Real.log 3 := by sorry
  have h₁ : Real.log 27 / Real.log 3 = 3 := by sorry
  --  apply h₁
  hole