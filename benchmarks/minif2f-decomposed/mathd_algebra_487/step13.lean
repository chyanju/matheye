theorem h₇₆ (a b c d : ℝ) (h₀ : b = a ^ 2) (h₁ : a + b = 1) (h₂ : d = c ^ 2) (h₃ : c + d = 1) (h₄ : a ≠ c) (h₅ : a ^ 2 + a - 1 = 0) (h₆ : c ^ 2 + c - 1 = 0) (h₇₂ : a ≠ c) (h₇₃ : a ^ 2 + a - 1 = 0) (h₇₄ : c ^ 2 + c - 1 = 0) (h₇₅ : (a - c) * (a + c + 1) = 0) : a + c + 1 = 0 := by
  apply mul_left_cancel₀ (sub_ne_zero_of_ne h₄)
  nlinarith