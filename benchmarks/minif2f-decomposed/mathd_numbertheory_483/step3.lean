theorem h₄ (a : ℕ → ℕ) (h₀ : a 1 = 1) (h₁ : a 2 = 1) (h₂ : ∀ (n : ℕ), a (n + 2) = a (n + 1) + a n) (h₃ : a 0 = 0) : a 3 = 2 := by
  have h₅ := h₂ 1
  have h₆ := h₂ 2
  have h₇ := h₂ 3
  simp [h₀, h₁, h₃] at h₅ h₆ h₇ <;> omega