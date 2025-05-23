import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (x : ℝ) (h₀ : |x - 1| + |x| + |x + 1| = x + 2) (h₁ : 0 ≤ x) (h : ¬x ≤ 1) (h₃ : x > 1) : |x - 1| = x - 1 := by -- rw [abs_of_nonneg (by linarith)]
  hole