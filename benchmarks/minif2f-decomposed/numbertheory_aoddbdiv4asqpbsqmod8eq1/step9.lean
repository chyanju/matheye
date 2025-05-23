theorem h₃₄ (a : ℤ) (b : ℕ) (h₀ : Odd a) (h₁ : 4 ∣ b) (h₂ : a ^ 2 % 8 = 1) (h₃₁ h₃₃ : 4 ∣ b) : 8 ∣ b ^ 2 := by
  obtain ⟨k, hk⟩ := h₃₃
  have h₃₅ : b = 4 * k := by sorry
  rw [h₃₅]
  have h₃₆ : (8 : ℕ) ∣ (4 * k : ℕ) ^ 2 := by sorry
  exact h₃₆