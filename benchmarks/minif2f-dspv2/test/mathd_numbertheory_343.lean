import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- What is the units digit of the product of all of the odd integers between 0 and 12? Show that it is 5.-/
theorem mathd_numbertheory_343 : (∏ k in Finset.range 6, (2 * k + 1)) % 10 = 5 := by
  have h₁ : (∏ k in Finset.range 6, (2 * k + 1)) = 1 * 3 * 5 * 7 * 9 * 11 := by
    norm_num [Finset.prod_range_succ, Finset.prod_range_succ, Finset.prod_range_succ,
      Finset.prod_range_succ, Finset.prod_range_succ, Finset.prod_range_succ]
    <;> decide
  
  have h₂ : (∏ k in Finset.range 6, (2 * k + 1)) % 10 = 5 := by
    rw [h₁]
    <;> norm_num
    <;> rfl
  
  apply h₂
