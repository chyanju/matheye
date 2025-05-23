import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (h₁ : 121 % 4 = 1) : 122 % 4 = 2 := by -- norm_num <;> rfl
  hole