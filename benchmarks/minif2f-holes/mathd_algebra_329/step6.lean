import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (x y : ℝ) (h₀ : 3 * y = x) (h₁ : 2 * x + 5 * y = 11) (h₂ : y = 1) (h₃ : x = 3) : x + y = 4 := by -- -- rw [h₃, h₂] <;> norm_num
  hole