theorem h₆₂ (c : ℝ) (f : ℝ → ℝ) (h₀ : ∀ (x : ℝ), f x = c * x ^ 3 - 9 * x + 3) (h₁ : f 2 = 9) (h₂ : c * 2 ^ 3 - 9 * 2 + 3 = 9) (h₃ : c * 8 - 18 + 3 = 9) (h₄ : c * 8 - 15 = 9) (h₅ h₆₁ : c * 8 = 24) : c = 3 := by
  apply mul_left_cancel₀ (show (8 : ℝ) ≠ 0 by norm_num)
  linarith