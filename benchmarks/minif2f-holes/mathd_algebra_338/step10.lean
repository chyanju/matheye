import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (a b c : ℝ) (h₀ : 3 * a + b + c = -3) (h₁ : a + 3 * b + c = 9) (h₂ : a + b + 3 * c = 19) (h₃ : a = -4) : b = 2 :=
  by
  have h₄₁ : b = a + 6 := by sorry
  --  --  rw [h₄₁, h₃] <;> norm_num
  hole