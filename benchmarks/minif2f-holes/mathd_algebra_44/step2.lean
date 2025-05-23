import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (s t : ℝ) (h₀ : s = 9 - 2 * t) (h₁ : t = 3 * s + 1) : s = 1 :=
  by
  have h₂₁ : s = 7 - 6 * s := by sorry
  have h₂₂ : s = 1 := by sorry
  --  exact h₂₂
  hole