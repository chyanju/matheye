import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₅ (x y : ℝ) (h₀ : x + y = 25) (h₁ : x - y = 11) (h₃ : x + y + (x - y) = 25 + 11) (h₄ : x + y + (x - y) = 2 * x) : 2 * x = 36 := by -- linarith
  hole