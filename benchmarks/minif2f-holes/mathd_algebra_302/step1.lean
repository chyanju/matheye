import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_algebra_302  : (Complex.I / 2) ^ 2 = -(1 / 4) :=
  by
  have h₀ : (Complex.I / 2 : ℂ) ^ 2 = -(1 / 4 : ℂ) := by sorry
  --  simpa using h₀
  hole