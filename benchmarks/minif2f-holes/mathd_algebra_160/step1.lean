import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_algebra_160 (n x : ℝ) (h₀ : n + x = 97) (h₁ : n + 5 * x = 265) : n + 2 * x = 139 :=
  by
  have h₂ : x = 42 := by sorry
  have h₃ : n = 55 := by sorry
  have h₄ : n + 2 * x = 139 := by sorry
  --  exact h₄
  hole