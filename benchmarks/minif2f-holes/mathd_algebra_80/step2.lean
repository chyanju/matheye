import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (x : ℝ) (h₀ : x ≠ -1) (h₁ : (x - 9) / (x + 1) = 2) : x + 1 ≠ 0 := by
  --  intro h
  --  apply h₀
  --  linarith
  hole