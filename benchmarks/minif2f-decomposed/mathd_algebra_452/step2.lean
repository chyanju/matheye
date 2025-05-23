theorem h₃ (a : ℕ → ℝ) (h₀ : ∀ (n : ℕ), a (n + 2) - a (n + 1) = a (n + 1) - a n) (h₁ : a 1 = 2 / 3) (h₂ : a 9 = 4 / 5) : a 2 - a 1 = a 1 - a 0 := by
  have h₃₁ := h₀ 0
  norm_num at h₃₁ ⊢ <;> linarith