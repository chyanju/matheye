import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂₇ (m b : ℝ) (h₀ : m * 7 + b = -1) (h₁ : m * -1 + b = 7) (h₂₁ : 8 * m = -8) : m = -1 := by -- linarith
  hole