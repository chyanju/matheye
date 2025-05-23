import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₇₆ (a b c : ℝ) (h₀ : a ≤ b ∧ b ≤ c) (h₁ : a + b + c = 2) (h₂ : a * b + b * c + c * a = 1) (h₃ : 0 ≤ a) (h₄ : 1 ≤ c) (h₅ : c ≤ 4 / 3) (h₆ : a ≤ 1 / 3) (h₇₁ : a + b = 2 - c) (h₇₂ : c ≤ 4 / 3) (h₇₃ : 1 ≤ c) (h₇₄ : a ≤ b) (h₇₅ : 0 ≤ a) : 1 / 3 ≤ b := by -- nlinarith [sq_nonneg (a - b), sq_nonneg (b - c), sq_nonneg (c - a)]
  hole