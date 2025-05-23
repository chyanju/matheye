import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_algebra_80 (x : ℝ) (h₀ : x ≠ -1) (h₁ : (x - 9) / (x + 1) = 2) : x = -11 :=
  by
  have h₂ : x + 1 ≠ 0 := by sorry
  have h₃ : x - 9 = 2 * (x + 1) := by sorry
  have h₄ : x = -11 := by sorry
  --  exact h₄
  hole