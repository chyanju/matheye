import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- Find the remainder when $1 + 2 + 2^2 + 2^3 + \dots + 2^{100}$ is divided by 7. Show that it is 3.-/
theorem mathd_numbertheory_127 : (∑ k in Finset.range 101, 2 ^ k) % 7 = 3 := by
  have h_sum_mod : (∑ k in Finset.range 101, 2 ^ k) % 7 = 3 := by
    rfl
  exact h_sum_mod
