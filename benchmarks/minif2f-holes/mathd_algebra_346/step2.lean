import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (f g : ℝ → ℝ) (h₀ : ∀ (x : ℝ), f x = 2 * x - 3) (h₁ : ∀ (x : ℝ), g x = x + 1) : f 5 = 7 := by
  --  rw [h₀]
  --  norm_num
  hole