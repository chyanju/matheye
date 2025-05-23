import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁  : ∀ n ≥ 1, 6 ^ n % 10 = 6 := by
  --  intro n hn
  --  induction' hn with n hn IH
  --  · norm_num
  --  · omega
  hole