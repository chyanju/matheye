import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h2 (x : ℝ) (h1 : (x + 1) ^ 2 * x = (x ^ 2 + 2 * x + 1) * x) : (x ^ 2 + 2 * x + 1) * x = x ^ 3 + 2 * x ^ 2 + x :=
  by
  have h2₁ : (x ^ 2 + 2 * x + 1) * x = x ^ 3 + 2 * x ^ 2 + x := by sorry
  --  rw [h2₁] <;> nlinarith
  hole