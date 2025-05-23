import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₆ (x : ℝ) (h₀ : 2 + 1 / (1 + 1 / (2 + 2 / (3 + x))) = 144 / 53) (h h₂ h₄ : 3 + x = 0) (h₅ : 2 + 2 / (3 + x) = 2) : 1 + 1 / (2 + 2 / (3 + x)) = 3 / 2 := by -- -- rw [h₅] <;> norm_num
  hole