import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂₂ (y : ℝ) (h₀ : y + 6 + y = 2 * 12) (h₁ h₂₁ : 2 * y + 6 = 24) : 2 * y = 18 := by -- linarith
  hole