import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁₂ (y : ℝ) (h₀ h₁₁ : y + 6 + y = 2 * 12) : y + 6 + y = 2 * y + 6 := by -- ring
  hole