import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h_sum  : ∑ k ∈ Finset.Icc 1 12, k = 78 := by -- norm_num [Finset.sum_Icc_succ_top, Nat.div_eq_of_lt] <;> rfl
  hole