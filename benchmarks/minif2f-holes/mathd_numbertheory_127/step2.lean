import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h_sum_mod  : (∑ k ∈ Finset.range 101, 2 ^ k) % 7 = 3 := by -- rfl
  hole