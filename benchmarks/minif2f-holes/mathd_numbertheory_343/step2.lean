import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁  : ∏ k ∈ Finset.range 6, (2 * k + 1) = 1 * 3 * 5 * 7 * 9 * 11 := by
  --  norm_num [Finset.prod_range_succ, Finset.prod_range_succ, Finset.prod_range_succ, Finset.prod_range_succ,
  --      Finset.prod_range_succ, Finset.prod_range_succ] <;>
    decide
  hole