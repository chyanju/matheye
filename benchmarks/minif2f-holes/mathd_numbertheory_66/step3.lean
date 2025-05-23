import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (h₁ : 11 * 17 = 187) : 194 = 11 * 17 + 7 := by -- norm_num [h₁] <;> rfl
  hole