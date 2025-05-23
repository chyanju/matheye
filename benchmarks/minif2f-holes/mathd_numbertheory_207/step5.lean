import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (h₁ : 9 ^ 2 = 81) (h₂ : 8 * 9 ^ 2 = 648) (h₃ : 5 * 9 = 45) : 8 * 9 ^ 2 + 5 * 9 = 693 := by -- rw [h₂, h₃] <;> norm_num <;> rfl
  hole