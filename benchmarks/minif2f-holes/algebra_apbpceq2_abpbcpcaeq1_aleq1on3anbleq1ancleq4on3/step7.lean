import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₆₁ (a b c : ℝ) (h₀ : a ≤ b ∧ b ≤ c) (h₁ : a + b + c = 2) (h₂ : a * b + b * c + c * a = 1) (h : ¬0 ≤ a) (h₄ : a < 0) (h₅ : a * (4 - 3 * a) < 0) : a ^ 2 + b ^ 2 + c ^ 2 = 2 := by
  --  nlinarith [sq_nonneg (a + b + c), sq_nonneg (a - b), sq_nonneg (b - c), sq_nonneg (c - a)]
  hole