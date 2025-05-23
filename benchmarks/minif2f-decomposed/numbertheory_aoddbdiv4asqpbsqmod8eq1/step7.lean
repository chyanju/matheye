theorem h₃ (a : ℤ) (b : ℕ) (h₀ : Odd a) (h₁ : 4 ∣ b) (h₂ : a ^ 2 % 8 = 1) : (↑(b ^ 2) : ℤ) % 8 = 0 := by
  have h₃₁ : (4 : ℕ) ∣ b := h₁
  have h₃₂ : (8 : ℕ) ∣ b ^ 2 := by sorry
  have h₃₃ : ((b ^ 2 : ℕ) : ℤ) % 8 = 0 := by sorry
  exact h₃₃