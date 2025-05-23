theorem h₄ (a b : ℝ) (h₁ : a * b = 180) (h₂ : 2 * (a + b) = 54) (h₃ : a + b = 27) : (a + b) ^ 2 = 729 := by
  rw [h₃]
  norm_num <;> linarith