import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_algebra_142 (m b : ℝ) (h₀ : m * 7 + b = -1) (h₁ : m * -1 + b = 7) : m + b = 5 :=
  by
  have h₂ : m = -1 := by sorry
  have h₃ : b = 6 := by sorry
  have h₄ : m + b = 5 := by sorry
  --  exact h₄
  hole