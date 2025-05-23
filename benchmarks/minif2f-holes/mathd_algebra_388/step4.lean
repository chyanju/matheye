import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂₂ (x y z : ℝ) (h₀ : 3 * x + 4 * y - 12 * z = 10) (h₁ : -2 * x - 3 * y + 9 * z = -4) : 3 * (3 * x + 4 * y - 12 * z) = 3 * 10 := by -- rw [h₀]
  hole