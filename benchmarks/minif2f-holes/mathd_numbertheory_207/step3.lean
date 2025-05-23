import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (h₁ : 9 ^ 2 = 81) : 8 * 9 ^ 2 = 648 := by -- rw [h₁] <;> norm_num <;> rfl
  hole