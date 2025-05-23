theorem h₁₂₃ (x y z : ℝ) (a : ℕ → ℝ) (h₀ : 0 < a 0 ∧ 0 < a 4 ∧ 0 < a 8) (h₁ : a 1 < 0 ∧ a 2 < 0) (h₂ : a 3 < 0 ∧ a 5 < 0) (h₃ : a 6 < 0 ∧ a 7 < 0) (h₄ : 0 < a 0 + a 1 + a 2) (h₅ : 0 < a 3 + a 4 + a 5) (h₆ : 0 < a 6 + a 7 + a 8) (h₇ : a 0 * x + a 1 * y + a 2 * z = 0) (h₈ : a 3 * x + a 4 * y + a 5 * z = 0) (h₉ : a 6 * x + a 7 * y + a 8 * z = 0) (h₁₀ : x = 0) (h₁₁ : y = 0) (h₁₂₁ : a 2 * z = 0) (h₁₂₂ : a 5 * z = 0) : a 8 * z = 0 := by
  have h₁₂₄ : a 6 * x + a 7 * y + a 8 * z = 0 := h₉
  rw [h₁₀, h₁₁] at h₁₂₄
  ring_nf at h₁₂₄ ⊢
  linarith