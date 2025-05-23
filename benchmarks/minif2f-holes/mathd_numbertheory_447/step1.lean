import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_numbertheory_447  : ∑ k ∈ {x ∈ Finset.Icc 1 49 | 3 ∣ x}, k % 10 = 78 :=
  by
  have h_main : (∑ k in Finset.filter (fun x => 3 ∣ x) (Finset.Icc 1 49), k % 10) = 78 := by sorry
  --  exact h_main
  hole