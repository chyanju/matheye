import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁ (h : ∑ k ∈ Finset.range 101, k = 5050) : (∑ k ∈ Finset.range 101, k) % 6 = 4 := by -- rw [h] <;> norm_num <;> rfl
  hole