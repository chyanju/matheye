import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂₂ (s t : ℝ) (h₀ : s = 9 - 2 * t) (h₁ : t = 3 * s + 1) (h₂₁ : s = 7 - 6 * s) : s = 1 := by -- linarith
  hole