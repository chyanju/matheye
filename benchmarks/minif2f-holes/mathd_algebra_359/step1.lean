import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_algebra_359 (y : ℝ) (h₀ : y + 6 + y = 2 * 12) : y = 9 :=
  by
  have h₁ : 2 * y + 6 = 24 := by sorry
  have h₂ : 2 * y = 18 := by sorry
  have h₃ : y = 9 := by sorry
  --  exact h₃
  hole