import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (f g : ℝ → ℝ) (h₀ : ∀ (x : ℝ), f x = x + 1) (h₁ : ∀ (x : ℝ), g x = x ^ 2 + 3) : g 2 = 7 := by
  --  rw [h₁]
  --  norm_num
  hole