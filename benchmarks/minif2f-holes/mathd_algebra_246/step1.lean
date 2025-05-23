import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_algebra_246 (a b : ℝ) (f : ℝ → ℝ) (h₀ : ∀ (x : ℝ), f x = a * x ^ 4 - b * x ^ 2 + x + 5) (h₂ : f (-3) = 2) : f 3 = 8 :=
  by
  have h₃ : 81 * a - 9 * b = 0 := by sorry
  have h₄ : b = 9 * a := by sorry
  have h₅ : f 3 = 8 := by sorry
  --  exact h₅
  hole