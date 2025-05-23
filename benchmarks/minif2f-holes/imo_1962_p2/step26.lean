import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁₁₄ (x : ℝ) (h₀ : 0 ≤ 3 - x) (h₁ : 0 ≤ x + 1) (h₂ : 1 / 2 < √(3 - x) - √(x + 1)) (h₃ : -1 ≤ x) (h₄ : √(3 - x) - √(x + 1) > 1 / 2) (h₅ : √(3 - x) > √(x + 1) + 1 / 2) (h₆ : 3 - x > x + 1 + √(x + 1) + 1 / 4) (h₇ : 7 - 8 * x > 4 * √(x + 1)) (h₈ : x < 7 / 8) (h₉ : 0 ≤ √31) (h₁₀ : 64 * x ^ 2 - 128 * x + 33 > 0) (h : ¬x < 1 - √31 / 8) (h₁₁₁ h₁₁₃ : x ≥ 1 - √31 / 8) : x ≤ 1 + √31 / 8 := by
  --  by_contra h₁₁₄
  have h₁₁₅ : x > 1 + Real.sqrt 31 / 8 := by sorry
  have h₁₁₆ : 64 * x ^ 2 - 128 * x + 33 > 0 := h₁₀
  have h₁₁₇ : x < 7 / 8 := h₈
  --  nlinarith [Real.sqrt_nonneg 31, Real.sq_sqrt (show 0 ≤ 31 by norm_num)]
  hole