import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_numbertheory_239  : (∑ k ∈ Finset.Icc 1 12, k) % 4 = 2 :=
  by
  have h_sum : (∑ k in Finset.Icc 1 12, k) = 78 := by sorry
  have h_final : (∑ k in Finset.Icc 1 12, k) % 4 = 2 := by sorry
  --  apply h_final
  hole