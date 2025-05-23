import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₅₂ (a b : ℝ) (h₀ : a ^ 2 + b ^ 2 = 1) (h₁ : a ≤ 1) (h₂ : a ≥ -1) (h₃ : b ≤ 1) (h₄ : b ≥ -1) (h₅ : a ≥ b) (h₅₁ : |a - b| = a - b) : a * b + (a - b) ≤ 1 :=
  by
  have h₅₃ : (a - 1) * (b + 1) ≤ 0 := by sorry
  --  nlinarith [sq_nonneg (a - 1), sq_nonneg (b + 1)]
  hole