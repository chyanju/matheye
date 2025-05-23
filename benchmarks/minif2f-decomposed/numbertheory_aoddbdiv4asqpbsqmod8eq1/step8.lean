theorem h₃₂ (a : ℤ) (b : ℕ) (h₀ : Odd a) (h₁ : 4 ∣ b) (h₂ : a ^ 2 % 8 = 1) (h₃₁ : 4 ∣ b) : 8 ∣ b ^ 2 := by
  have h₃₃ : (4 : ℕ) ∣ b := h₁
  have h₃₄ : (8 : ℕ) ∣ b ^ 2 := by sorry
  exact h₃₄