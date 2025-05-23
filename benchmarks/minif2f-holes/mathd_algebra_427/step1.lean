import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_algebra_427 (x y z : ℝ) (h₀ : 3 * x + y = 17) (h₁ : 5 * y + z = 14) (h₂ : 3 * x + 5 * z = 41) : x + y + z = 12 :=
  by
  have h₃ : 6 * x + 6 * y + 6 * z = 72 := by sorry
  have h₄ : x + y + z = 12 := by sorry
  --  exact h₄
  hole