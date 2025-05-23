import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂₁ (c : ℝ) (f : ℝ → ℝ) (h₀ : ∀ (x : ℝ), f x = c * x ^ 3 - 9 * x + 3) (h₁ : f 2 = 9) : f 2 = c * 2 ^ 3 - 9 * 2 + 3 := by -- rw [h₀] <;> norm_num
  hole