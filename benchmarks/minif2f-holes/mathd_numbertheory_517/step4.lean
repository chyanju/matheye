import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃ (h₁ : 121 % 4 = 1) (h₂ : 122 % 4 = 2) : 123 % 4 = 3 := by -- norm_num <;> rfl
  hole