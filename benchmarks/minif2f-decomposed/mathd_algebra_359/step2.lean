theorem h₁ (y : ℝ) (h₀ : y + 6 + y = 2 * 12) : 2 * y + 6 = 24 := by
  have h₁₁ : y + 6 + y = 2 * 12 := h₀
  have h₁₂ : y + 6 + y = 2 * y + 6 := by sorry
  rw [h₁₂] at h₁₁
  linarith