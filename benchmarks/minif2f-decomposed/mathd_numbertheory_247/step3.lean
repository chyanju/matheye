theorem h₂ (n : ℕ) (h₀ : 3 * n % 11 = 2) : 3 * (n % 11) % 11 = 2 := by
  have h₃ : 3 * n % 11 = 2 := h₀
  have h₄ : 3 * (n % 11) % 11 = 3 * n % 11 := by sorry
  rw [h₄, h₃]