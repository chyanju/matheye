theorem h₅ (a : ℕ → ℕ) (h₀ : a 1 = 1) (h₁ : a 2 = 1) (h₂ : ∀ (n : ℕ), a (n + 2) = a (n + 1) + a n) (h₃ : a 0 = 0) (h₄ : a 3 = 2) : a 4 = 3 := by
  have h₅ := h₂ 2
  have h₆ := h₂ 3
  have h₇ := h₂ 4
  simp [h₀, h₁, h₃, h₄] at h₅ h₆ h₇ <;> omega