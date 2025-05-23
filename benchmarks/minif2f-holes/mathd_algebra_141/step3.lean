import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃₁ (a b : ℝ) (h₁ : a * b = 180) (h₂ : 2 * (a + b) = 54) : a + b = 27 := by -- linarith
  hole