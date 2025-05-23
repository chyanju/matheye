import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₆₁ (a b : ℝ) (h₀ : a ^ 2 + b ^ 2 = 1) (h₁ : a ≤ 1) (h₂ : a ≥ -1) (h₃ : b ≤ 1) (h₄ : b ≥ -1) (h₅ : a ≥ b → a * b + |a - b| ≤ 1) (h₆ : a < b) : |a - b| = b - a := by -- -- rw [abs_of_neg (by linarith)] <;> linarith
  hole