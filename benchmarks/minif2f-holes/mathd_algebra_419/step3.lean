import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃ (a b : ℝ) (h₀ : a = -1) (h₁ : b = 5) (h₂ : -a = 1) : b ^ 2 = 25 := by -- -- rw [h₁] <;> norm_num
  hole