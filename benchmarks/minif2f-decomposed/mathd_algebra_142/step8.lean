theorem h₃ (m b : ℝ) (h₀ : m * 7 + b = -1) (h₁ : m * -1 + b = 7) (h₂ : m = -1) : b = 6 := by
  have h₃₁ : m = -1 := h₂
  have h₃₂ : m * -1 + b = 7 := h₁
  rw [h₃₁] at h₃₂
  linarith