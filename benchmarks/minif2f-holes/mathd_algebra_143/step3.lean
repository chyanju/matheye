import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃ (f g : ℝ → ℝ) (h₀ : ∀ (x : ℝ), f x = x + 1) (h₁ : ∀ (x : ℝ), g x = x ^ 2 + 3) (h₂ : g 2 = 7) : f (g 2) = 8 := by
  --  rw [h₂]
  --  --  rw [h₀] <;> norm_num
  hole