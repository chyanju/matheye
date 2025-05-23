theorem h₂₂ (a b : ℝ) (h₀ : 2 ^ a = 32) (h₁ : a ^ b = 125) (h : ¬a > 0) (h₂₁ : a ≤ 0) : 2 ^ a ≤ 1 := by
  have h₂₂₁ : a ≤ 0 := h₂₁
  have h₂₂₂ : (2 : ℝ) ^ a ≤ (2 : ℝ) ^ (0 : ℝ) := by sorry
  norm_num at h₂₂₂ ⊢ <;> linarith