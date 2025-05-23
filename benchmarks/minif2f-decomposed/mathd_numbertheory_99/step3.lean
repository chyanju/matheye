theorem h₂ (n : ℕ) (h₀ : 2 * n % 47 = 15) : 2 * (n % 47) % 47 = 15 := by
  have h₃ : (2 * n) % 47 = 15 := h₀
  have h₄ : (2 * n) % 47 = (2 * (n % 47)) % 47 := by sorry
  rw [h₄] at h₃
  exact h₃