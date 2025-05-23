theorem h₁₀ (x : ℝ) (h₀ : 0 ≤ 3 - x) (h₁ : 0 ≤ x + 1) (h₂ : 1 / 2 < √(3 - x) - √(x + 1)) (h₃ : -1 ≤ x) (h₄ : √(3 - x) - √(x + 1) > 1 / 2) (h₅ : √(3 - x) > √(x + 1) + 1 / 2) (h₆ : 3 - x > x + 1 + √(x + 1) + 1 / 4) (h₇ : 7 - 8 * x > 4 * √(x + 1)) (h₈ : x < 7 / 8) (h₉ : 0 ≤ √31) : 64 * x ^ 2 - 128 * x + 33 > 0 :=
  by
  have h₁₀₁ : 7 - 8 * x > 4 * Real.sqrt (x + 1) := h₇
  have h₁₀₂ : 0 ≤ Real.sqrt (x + 1) := Real.sqrt_nonneg (x + 1)
  have h₁₀₃ : 0 ≤ 7 - 8 * x := by sorry
  have h₁₀₄ : 0 ≤ Real.sqrt (x + 1) := Real.sqrt_nonneg (x + 1)
  have h₁₀₅ : 0 ≤ 7 - 8 * x := by sorry
  have h₁₀₆ : (7 - 8 * x) ^ 2 > (4 * Real.sqrt (x + 1)) ^ 2 := by sorry
  have h₁₀₇ : (4 * Real.sqrt (x + 1)) ^ 2 = 16 * (x + 1) := by sorry
  have h₁₀₈ : (7 - 8 * x) ^ 2 > 16 * (x + 1) := by sorry
  nlinarith [Real.sq_sqrt (show 0 ≤ x + 1 by linarith), sq_nonneg (x - 1)]