import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃ (x y : ℝ) (h₀ : x ^ 2 + 8 * x + y ^ 2 - 6 * y = 0) (h₁ : (x + 4) ^ 2 + (y - 3) ^ 2 = x ^ 2 + 8 * x + y ^ 2 - 6 * y + 25) (h₂ : (x + 4) ^ 2 + (y - 3) ^ 2 = 25) : (x + 4) ^ 2 + (y - 3) ^ 2 = 5 ^ 2 := by -- -- rw [h₂] <;> norm_num
  hole