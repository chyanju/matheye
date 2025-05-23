import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁₀ (f : ℝ → ℝ) (h₀ : ∀ (x : ℝ), f x = 5 * x + 4) : f 1 = 5 * 1 + 4 := by -- rw [h₀] <;> norm_num
  hole