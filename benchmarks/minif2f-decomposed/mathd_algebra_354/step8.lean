theorem h₄ (a d : ℝ) (h₀ : a + 6 * d = 30) (h₁ : a + 10 * d = 60) (h₂ : 4 * d = 30) (h₃ : 14 * d = 105) : a + 20 * d = 135 := by
  have h₄₁ : a + 20 * d = (a + 6 * d) + 14 * d := by sorry
  rw [h₄₁]
  have h₄₂ : a + 6 * d = 30 := h₀
  have h₄₃ : 14 * d = 105 := h₃
  rw [h₄₂, h₄₃] <;> norm_num