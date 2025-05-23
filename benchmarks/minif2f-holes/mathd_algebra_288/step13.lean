import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₇ (x y : ℝ) (n : NNReal) (h₀ : x < 0 ∧ y < 0) (h₁ : |y| = 6) (h₂ : √((x - 8) ^ 2 + (y - 3) ^ 2) = 15) (h₃ : √(x ^ 2 + y ^ 2) = √(↑n : ℝ)) (h₄ : y = -6) (h₅ : (x - 8) ^ 2 + (y - 3) ^ 2 = 225) (h₆ : x = -4) : x ^ 2 + y ^ 2 = 52 := by
  have h₇₁ : y = -6 := h₄
  have h₇₂ : x = -4 := h₆
  --  rw [h₇₂, h₇₁]
  --  norm_num <;> linarith
  hole