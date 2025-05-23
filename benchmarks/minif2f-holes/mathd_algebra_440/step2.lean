import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁ (x : ℝ) (h₀ : 3 / 2 / 3 = x / 10) : x = 5 :=
  by
  have h₂ : x = 5 := by sorry
  --  exact h₂
  hole