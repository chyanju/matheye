import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (a : ℝ) (h₀ : a * (2 - a) = 2 * a - a ^ 2) (h₁ : (a - 1) ^ 2 ≥ 0) : a * (2 - a) ≤ 1 :=
  by
  have h₃ : 2 * a - a ^ 2 ≤ 1 := by sorry
  --  linarith
  hole