import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃₂ (y : ℝ) (h₀ : y + 6 + y = 2 * 12) (h₁ : 2 * y + 6 = 24) (h₂ h₃₁ : 2 * y = 18) : y = 9 := by -- linarith
  hole