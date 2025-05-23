import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁ (x : ℝ) (h₀ : 5 + 500 / 100 * 10 = 110 / 100 * x) : x = 50 :=
  by
  have h₂ : x = 50 := by sorry
  --  exact h₂
  hole