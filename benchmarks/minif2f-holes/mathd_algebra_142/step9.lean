import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (m b : ℝ) (h₀ : m * 7 + b = -1) (h₁ : m * -1 + b = 7) (h₂ : m = -1) (h₃ : b = 6) : m + b = 5 := by -- -- rw [h₂, h₃] <;> norm_num
  hole