theorem h₂₁ (a b : ℝ) (h₀ : 3 * a + 2 * b = 5) (h₁ : a + b = 2) : a = 1 := by
  have h₂₂ : a + b = 2 := h₁
  have h₂₃ : 3 * a + 2 * b = 5 := h₀
  have h₂₄ : b = 2 - a := by sorry
  rw [h₂₄] at h₂₃
  linarith