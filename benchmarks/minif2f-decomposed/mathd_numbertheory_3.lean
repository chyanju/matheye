import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- What is the units digit of the sum of the squares of the first nine positive integers? Show that it is 5.-/
theorem mathd_numbertheory_3 : (∑ x in Finset.range 10, (x + 1) ^ 2) % 10 = 5 := by
  have h_sum : (∑ x in Finset.range 10, (x + 1) ^ 2) % 10 = 5 := by
    norm_num [Finset.sum_range_succ, Finset.sum_range_succ, Finset.sum_range_succ, Finset.sum_range_succ,
      Finset.sum_range_succ, Finset.sum_range_succ, Finset.sum_range_succ, Finset.sum_range_succ,
      Finset.sum_range_succ, Finset.sum_range_succ, Nat.pow_succ, Nat.mul_mod, Nat.add_mod, Nat.mod_mod]
    <;> rfl
  
  exact h_sum
