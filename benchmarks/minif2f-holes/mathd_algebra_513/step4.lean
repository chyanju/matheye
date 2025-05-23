import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂₄ (a b : ℝ) (h₀ : 3 * a + 2 * b = 5) (h₁ h₂₂ : a + b = 2) (h₂₃ : 3 * a + 2 * b = 5) : b = 2 - a := by -- linarith
  hole