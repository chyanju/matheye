theorem h₁ (x : ℝ) (h₀ : x / 50 = 40) : x = 40 * 50 := by
  have h₁ : x / 50 = 40 := h₀
  have h₂ : x = 40 * 50 := by sorry
  exact h₂