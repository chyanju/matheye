theorem h₉ (a : ℕ → ℕ) (h₀ : a 1 = 1) (h₁ : a 2 = 1) (h₂ : ∀ (n : ℕ), a (n + 2) = a (n + 1) + a n) (h₃ : a 0 = 0) (h₄ : a 3 = 2) (h₅ : a 4 = 3) (h₆ : a 5 = 5) (h₇ : a 6 = 8) (h₈ : a 7 = 13) : a 8 = 21 := by
  have h₉ := h₂ 6
  have h₁₀ := h₂ 7
  have h₁₁ := h₂ 8
  simp [h₀, h₁, h₃, h₄, h₅, h₆, h₇, h₈] at h₉ h₁₀ h₁₁ <;> omega