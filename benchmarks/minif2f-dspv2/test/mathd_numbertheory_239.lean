import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- Determine the modulo 4 remainder of the following sum: $$ 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10 + 11 + 12. $$ Show that it is 2.-/
theorem mathd_numbertheory_239 : (∑ k in Finset.Icc 1 12, k) % 4 = 2 := by
  have h_sum : (∑ k in Finset.Icc 1 12, k) = 78 := by
    norm_num [Finset.sum_Icc_succ_top, Nat.div_eq_of_lt]
    <;> rfl
  
  have h_final : (∑ k in Finset.Icc 1 12, k) % 4 = 2 := by
    rw [h_sum]
    <;> norm_num
    <;> rfl
  
  apply h_final
