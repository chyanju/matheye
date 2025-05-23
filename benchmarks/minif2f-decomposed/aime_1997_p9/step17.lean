theorem h₇₄ (a : ℝ) (h₀ : 0 < a) (h₁ : 1 / a - (↑⌊1 / a⌋ : ℝ) = a ^ 2 - (↑⌊a ^ 2⌋ : ℝ)) (h₂ : 2 < a ^ 2) (h₃ : a ^ 2 < 3) (h₄ : ⌊a ^ 2⌋ = 2) (h₅ : ⌊1 / a⌋ = 0) (h₆ : 1 / a = a ^ 2 - 2) (h₇₁ : a ≠ 0) (h₇₂ : 1 / a = a ^ 2 - 2) : a ^ 3 - 2 * a - 1 = 0 := by
  have h₇₅ : 1 / a = a ^ 2 - 2 := h₆
  have h₇₆ : a ≠ 0 := by sorry
  field_simp at h₇₅
  ring_nf at h₇₅ ⊢
  nlinarith [sq_nonneg (a - 1), sq_nonneg (a + 1), sq_nonneg (a ^ 2 - 1)]