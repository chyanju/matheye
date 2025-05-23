import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h_simplify (x : ℝ) (h_expand : (x + 3) * (2 * x - 6) = 2 * x ^ 2 - 6 * x + 6 * x - 18) : 2 * x ^ 2 - 6 * x + 6 * x - 18 = 2 * x ^ 2 - 18 :=
  by
  have h1 : 2 * x ^ 2 - 6 * x + 6 * x - 18 = 2 * x ^ 2 - 18 := by sorry
  --  rw [h1] <;> linarith
  hole