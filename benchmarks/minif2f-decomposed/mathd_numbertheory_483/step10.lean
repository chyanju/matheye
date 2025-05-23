theorem h₁₁ (a : ℕ → ℕ) (h₀ : a 1 = 1) (h₁ : a 2 = 1) (h₂ : ∀ (n : ℕ), a (n + 2) = a (n + 1) + a n) (h₃ : a 0 = 0) (h₄ : a 3 = 2) (h₅ : a 4 = 3) (h₆ : a 5 = 5) (h₇ : a 6 = 8) (h₈ : a 7 = 13) (h₉ : a 8 = 21) (h₁₀ : a 9 = 34) : a 10 = 55 := by
  have h₁₁ := h₂ 8
  have h₁₂ := h₂ 9
  have h₁₃ := h₂ 10
  simp [h₀, h₁, h₃, h₄, h₅, h₆, h₇, h₈, h₉, h₁₀] at h₁₁ h₁₂ h₁₃ <;> omega