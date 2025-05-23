import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_algebra_412 (x y : ℝ) (h₀ : x + y = 25) (h₁ : x - y = 11) : x = 18 :=
  by
  have h₂ : 2 * x = 36 := by sorry
  have h₃ : x = 18 := by sorry
  --  apply h₃
  hole