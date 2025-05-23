import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃ (x y : ℝ) (h₀ : x + y = 25) (h₁ : x - y = 11) : x + y + (x - y) = 25 + 11 := by -- linarith
  hole