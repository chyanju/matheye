import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃ (h₁ : 9 ^ 2 = 81) (h₂ : 8 * 9 ^ 2 = 648) : 5 * 9 = 45 := by -- norm_num <;> rfl
  hole