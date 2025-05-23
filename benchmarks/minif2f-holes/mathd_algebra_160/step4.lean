import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃ (n x : ℝ) (h₀ : n + x = 97) (h₁ : n + 5 * x = 265) (h₂ : x = 42) : n = 55 := by
  have h₃₁ : n = 55 := by sorry
  --  exact h₃₁
  hole