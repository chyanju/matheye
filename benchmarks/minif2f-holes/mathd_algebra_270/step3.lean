import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁₁ (f : ℝ → ℝ) (h₀ : ∀ (x : ℝ), x ≠ -2 → f x = 1 / (x + 2)) : 1 ≠ -2 := by -- norm_num
  hole