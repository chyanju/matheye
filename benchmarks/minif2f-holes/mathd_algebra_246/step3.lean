import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃₁ (a b : ℝ) (f : ℝ → ℝ) (h₀ : ∀ (x : ℝ), f x = a * x ^ 4 - b * x ^ 2 + x + 5) (h₂ : f (-3) = 2) : f (-3) = a * (-3) ^ 4 - b * (-3) ^ 2 + -3 + 5 := by -- rw [h₀] <;> ring_nf
  hole