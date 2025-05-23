theorem h₇ (x : ℝ) (h₀ : 0 ≤ 3 - x) (h₁ : 0 ≤ x + 1) (h₂ : 1 / 2 < √(3 - x) - √(x + 1)) (h₃ : -1 ≤ x) (h₄ : √(3 - x) - √(x + 1) > 1 / 2) (h₅ : √(3 - x) > √(x + 1) + 1 / 2) (h₆ : 3 - x > x + 1 + √(x + 1) + 1 / 4) : 7 - 8 * x > 4 * √(x + 1) :=
  by
  have h₇₁ : 3 - x > x + 1 + Real.sqrt (x + 1) + 1 / 4 := h₆
  have h₇₂ : 0 ≤ Real.sqrt (x + 1) := Real.sqrt_nonneg (x + 1)
  nlinarith [Real.sqrt_nonneg (x + 1)]