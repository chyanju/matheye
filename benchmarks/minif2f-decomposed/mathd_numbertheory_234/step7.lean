theorem h₃ (a b : ℕ) (h₀ : 1 ≤ a ∧ a ≤ 9 ∧ b ≤ 9) (h₁ : (10 * a + b) ^ 3 = 912673) (h₂ : 10 * a + b ≤ 97) : 10 * a + b ≥ 97 := by
  by_contra h
  have h₃₁ : 10 * a + b ≤ 96 := by sorry
  have h₃₂ : (10 * a + b) ^ 3 ≤ 96 ^ 3 := by sorry
  have h₃₃ : 96 ^ 3 < 912673 := by sorry
  have h₃₄ : (10 * a + b) ^ 3 < 912673 := by sorry
  linarith