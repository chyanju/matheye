import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (m b : ℝ) (h₀ : m * 7 + b = -1) (h₁ : m * -1 + b = 7) : m = -1 :=
  by
  have h₂₁ : 8 * m = -8 := by sorry
  have h₂₇ : m = -1 := by sorry
  --  exact h₂₇
  hole