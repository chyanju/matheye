import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_algebra_148 (c : ℝ) (f : ℝ → ℝ) (h₀ : ∀ (x : ℝ), f x = c * x ^ 3 - 9 * x + 3) (h₁ : f 2 = 9) : c = 3 :=
  by
  have h₂ : c * (2 : ℝ) ^ 3 - 9 * (2 : ℝ) + 3 = 9 := by sorry
  have h₃ : c * 8 - 18 + 3 = 9 := by sorry
  have h₄ : c * 8 - 15 = 9 := by sorry
  have h₅ : c * 8 = 24 := by sorry
  have h₆ : c = 3 := by sorry
  --  apply h₆
  hole