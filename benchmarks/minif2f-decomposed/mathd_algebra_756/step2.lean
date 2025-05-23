theorem h₂ (a b : ℝ) (h₀ : 2 ^ a = 32) (h₁ : a ^ b = 125) : a > 0 := by
  by_contra h
  have h₂₁ : a ≤ 0 := by sorry
  have h₂₂ : (2 : ℝ) ^ a ≤ 1 := by sorry
  have h₂₃ : (2 : ℝ) ^ a = 32 := h₀
  linarith