import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (x y : ℝ) (n : NNReal) (h₀ : x < 0 ∧ y < 0) (h₁ : |y| = 6) (h₂ : √((x - 8) ^ 2 + (y - 3) ^ 2) = 15) (h₃ : √(x ^ 2 + y ^ 2) = √(↑n : ℝ)) : y = -6 := by
  have h₄₁ : y < 0 := h₀.2
  have h₄₂ : abs y = 6 := h₁
  have h₄₃ : y = -6 := by sorry
  --  exact h₄₃
  hole