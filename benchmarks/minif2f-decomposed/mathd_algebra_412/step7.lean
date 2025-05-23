theorem h₄ (x y : ℝ) (h₀ : x + y = 25) (h₁ : x - y = 11) (h₂ : 2 * x = 36) : x = 18 := by
  apply mul_left_cancel₀ (show (2 : ℝ) ≠ 0 by norm_num)
  linarith