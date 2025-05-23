import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₆ (a b c : ℝ) (h₀ : 3 * a + b + c = -3) (h₁ : a + 3 * b + c = 9) (h₂ : a + b + 3 * c = 19) (h₃ : a = -4) (h₄ : b = 2) (h₅ : c = 7) : a * b * c = -56 := by -- -- rw [h₃, h₄, h₅] <;> norm_num
  hole