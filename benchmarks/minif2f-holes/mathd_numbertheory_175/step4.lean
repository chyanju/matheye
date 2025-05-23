import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (h₁ : ∀ n ≥ 1, 6 ^ n % 10 = 6) : 2 ^ 4 % 10 = 6 := by -- norm_num
  hole