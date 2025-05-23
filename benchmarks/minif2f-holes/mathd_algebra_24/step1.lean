import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_algebra_24 (x : ℝ) (h₀ : x / 50 = 40) : x = 2000 :=
  by
  have h₁ : x = 2000 := by sorry
  --  exact h₁
  hole