import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h_main  : ∑ k ∈ {x ∈ Finset.Icc 1 49 | 3 ∣ x}, k % 10 = 78 := by
  --  norm_num [Finset.sum_filter, Finset.sum_Icc_succ_top, Nat.div_eq_of_lt, Nat.div_eq_of_lt, Nat.div_eq_of_lt,
  --      Nat.div_eq_of_lt, Nat.div_eq_of_lt, Nat.div_eq_of_lt, Nat.div_eq_of_lt, Nat.div_eq_of_lt, Nat.div_eq_of_lt,
  --      Nat.div_eq_of_lt, Nat.div_eq_of_lt, Nat.div_eq_of_lt, Nat.div_eq_of_lt, Nat.div_eq_of_lt, Nat.div_eq_of_lt] <;>
    rfl
  hole