import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃₁ (x y z : ℝ) (h₀ : 3 * x + 4 * y - 12 * z = 10) (h₁ : -2 * x - 3 * y + 9 * z = -4) (h₂ : 9 * x + 12 * y - 36 * z = 30) : 4 * (-2 * x - 3 * y + 9 * z) = 4 * -4 := by -- rw [h₁]
  hole