import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₅ (h₁ : 9 ^ 2 = 81) (h₂ : 8 * 9 ^ 2 = 648) (h₃ : 5 * 9 = 45) (h₄ : 8 * 9 ^ 2 + 5 * 9 = 693) : 8 * 9 ^ 2 + 5 * 9 + 2 = 695 := by -- rw [h₄] <;> norm_num <;> rfl
  hole