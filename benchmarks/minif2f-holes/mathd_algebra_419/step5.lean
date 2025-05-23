import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₅ (a b : ℝ) (h₀ : a = -1) (h₁ : b = 5) (h₂ : -a = 1) (h₃ : b ^ 2 = 25) (h₄ : 3 * (a * b) = -15) : -a - b ^ 2 + 3 * (a * b) = -39 := by -- -- rw [h₂, h₃, h₄] <;> norm_num
  hole