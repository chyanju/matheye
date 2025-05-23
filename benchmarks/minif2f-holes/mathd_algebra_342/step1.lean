import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_algebra_342 (a d : ℝ) (h₀ : ∑ k ∈ Finset.range 5, (a + (↑k : ℝ) * d) = 70) (h₁ : ∑ k ∈ Finset.range 10, (a + (↑k : ℝ) * d) = 210) : a = 42 / 5 :=
  by
  have h₂ : 5 * a + 10 * d = 70 := by sorry
  have h₃ : 10 * a + 45 * d = 210 := by sorry
  have h₄ : a + 2 * d = 14 := by sorry
  have h₅ : 2 * a + 9 * d = 42 := by sorry
  have h₆ : d = 14 / 5 := by sorry
  have h₇ : a = 42 / 5 := by sorry
  --  apply h₇
  hole