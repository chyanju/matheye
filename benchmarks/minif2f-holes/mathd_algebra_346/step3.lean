import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃ (f g : ℝ → ℝ) (h₀ : ∀ (x : ℝ), f x = 2 * x - 3) (h₁ : ∀ (x : ℝ), g x = x + 1) (h₂ : f 5 = 7) : f 5 - 1 = 6 := by
  --  rw [h₂]
  --  norm_num
  hole