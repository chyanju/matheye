import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃ (x : ℝ) (h₀ : |x - 1| + |x| + |x + 1| = x + 2) (h₁ : 0 ≤ x) (h₂ : x ≤ 1) : 0 ≤ x ∧ x ≤ 1 := by -- exact ⟨h₁, h₂⟩
  hole