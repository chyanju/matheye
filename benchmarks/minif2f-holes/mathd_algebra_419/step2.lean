import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (a b : ℝ) (h₀ : a = -1) (h₁ : b = 5) : -a = 1 := by -- -- rw [h₀] <;> norm_num
  hole