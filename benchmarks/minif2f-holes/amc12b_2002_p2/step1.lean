import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem amc12b_2002_p2 (x : ℤ) (h₀ : x = 4) : (3 * x - 2) * (4 * x + 1) - (3 * x - 2) * (4 * x) + 1 = 11 :=
  by
  have h₁ : (3 * x - 2) * (4 * x + 1) - (3 * x - 2) * (4 * x) + 1 = 3 * x - 1 := by sorry
  have h₂ : 3 * x - 1 = 11 := by sorry
  have h₃ : (3 * x - 2) * (4 * x + 1) - (3 * x - 2) * (4 * x) + 1 = 11 := by sorry
  --  exact h₃
  hole