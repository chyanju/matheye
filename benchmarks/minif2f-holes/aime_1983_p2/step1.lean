import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem aime_1983_p2 (x p : ℝ) (f : ℝ → ℝ) (h₀ : 0 < p ∧ p < 15) (h₁ : p ≤ x ∧ x ≤ 15) (h₂ : f x = |x - p| + |x - 15| + |x - p - 15|) : 15 ≤ f x :=
  by
  have h₃ : x - p ≥ 0 := by sorry
  have h₄ : x - 15 ≤ 0 := by sorry
  have h₅ : x - p - 15 ≤ 0 := by sorry
  have h₆ : abs (x - p) = x - p := by sorry
  have h₇ : abs (x - 15) = 15 - x := by sorry
  have h₈ : abs (x - p - 15) = p + 15 - x := by sorry
  have h₉ : f x = 30 - x := by sorry
  have h₁₀ : 15 ≤ f x := by sorry
  --  exact h₁₀
  hole