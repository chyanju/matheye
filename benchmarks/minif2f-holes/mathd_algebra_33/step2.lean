import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃ (x y z : ℝ) (h₀ : x ≠ 0) (h₁ : 2 * x = 5 * y) (h₂ : 7 * y = 10 * z) : 14 * x = 35 * y :=
  by
  have h₃₁ : 14 * x = 35 * y := by sorry
  --  exact h₃₁
  hole