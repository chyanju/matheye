import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₅ (a b : ℝ) (f : ℝ → ℝ) (h₀ : ∀ (x : ℝ), f x = a * x ^ 4 - b * x ^ 2 + x + 5) (h₂ : f (-3) = 2) (h₃ : 81 * a - 9 * b = 0) (h₄ : b = 9 * a) : f 3 = 8 :=
  by
  have h₅₁ : f 3 = a * (3 : ℝ) ^ 4 - b * (3 : ℝ) ^ 2 + (3 : ℝ) + 5 := by sorry
  --  rw [h₅₁]
  --  --  rw [h₄] <;> ring_nf at * <;> nlinarith
  hole