import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_algebra_137 (x : ℕ) (h₀ : (↑x : ℝ) + 4 / 100 * (↑x : ℝ) = 598) : x = 575 :=
  by
  have h₁ : (104 : ℝ) * (x : ℝ) = (59800 : ℝ) := by sorry
  have h₂ : 104 * x = 59800 := by sorry
  have h₃ : x = 575 := by sorry
  --  apply h₃
  hole