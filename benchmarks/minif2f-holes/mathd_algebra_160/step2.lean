import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (n x : ℝ) (h₀ : n + x = 97) (h₁ : n + 5 * x = 265) : x = 42 := by
  have h₂₁ : 4 * x = 168 := by sorry
  --  linarith
  hole