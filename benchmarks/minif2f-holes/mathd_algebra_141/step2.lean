import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃ (a b : ℝ) (h₁ : a * b = 180) (h₂ : 2 * (a + b) = 54) : a + b = 27 := by
  have h₃₁ : a + b = 27 := by sorry
  --  exact h₃₁
  hole