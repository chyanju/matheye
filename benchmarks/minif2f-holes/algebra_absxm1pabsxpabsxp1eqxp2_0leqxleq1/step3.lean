import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (x : ℝ) (h₀ : |x - 1| + |x| + |x + 1| = x + 2) (h : ¬0 ≤ x) : x < 0 := by -- linarith
  hole