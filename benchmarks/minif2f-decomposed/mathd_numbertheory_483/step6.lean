theorem h₇ (a : ℕ → ℕ) (h₀ : a 1 = 1) (h₁ : a 2 = 1) (h₂ : ∀ (n : ℕ), a (n + 2) = a (n + 1) + a n) (h₃ : a 0 = 0) (h₄ : a 3 = 2) (h₅ : a 4 = 3) (h₆ : a 5 = 5) : a 6 = 8 := by
  have h₇ := h₂ 4
  have h₈ := h₂ 5
  have h₉ := h₂ 6
  simp [h₀, h₁, h₃, h₄, h₅, h₆] at h₇ h₈ h₉ <;> omega