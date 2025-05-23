import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem amc12a_2021_p9  : ∏ k ∈ Finset.range 7, (2 ^ 2 ^ k + 3 ^ 2 ^ k) = 3 ^ 128 - 2 ^ 128 :=
  by
  have h₀ : (∏ k in Finset.range 7, (2 ^ 2 ^ k + 3 ^ 2 ^ k)) = 3 ^ 128 - 2 ^ 128 := by sorry
  --  exact h₀
  hole