theorem h₆ (a b : ℕ) (h₀ : 1 ≤ a ∧ a ≤ 9 ∧ b ≤ 9) (h₁ : (10 * a + b) ^ 3 = 912673) (h₂ : 10 * a + b ≤ 97) (h₃ : 10 * a + b ≥ 97) (h₄ : 10 * a + b = 97) (h₅ : a = 9) : b = 7 := by
  have h₆₁ : 10 * a + b = 97 := h₄
  have h₆₂ : a = 9 := h₅
  rw [h₆₂] at h₆₁
  omega