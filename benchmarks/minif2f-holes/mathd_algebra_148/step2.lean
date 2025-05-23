import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (c : ℝ) (f : ℝ → ℝ) (h₀ : ∀ (x : ℝ), f x = c * x ^ 3 - 9 * x + 3) (h₁ : f 2 = 9) : c * 2 ^ 3 - 9 * 2 + 3 = 9 :=
  by
  have h₂₁ : f 2 = c * (2 : ℝ) ^ 3 - 9 * (2 : ℝ) + 3 := by sorry
  --  rw [h₂₁] at h₁
  --  linarith
  hole