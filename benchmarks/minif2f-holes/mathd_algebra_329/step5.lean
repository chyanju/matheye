import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃₁ (x y : ℝ) (h₀ : 3 * y = x) (h₁ : 2 * x + 5 * y = 11) (h₂ : y = 1) : x = 3 * y := by -- linarith
  hole