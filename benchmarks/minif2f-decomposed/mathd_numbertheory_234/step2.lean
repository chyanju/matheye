theorem h₂ (a b : ℕ) (h₀ : 1 ≤ a ∧ a ≤ 9 ∧ b ≤ 9) (h₁ : (10 * a + b) ^ 3 = 912673) : 10 * a + b ≤ 97 := by
  by_contra h
  have h₂₁ : 10 * a + b ≥ 98 := by sorry
  have h₂₂ : (10 * a + b) ^ 3 ≥ 98 ^ 3 := by sorry
  have h₂₃ : 98 ^ 3 > 912673 := by sorry
  have h₂₄ : (10 * a + b) ^ 3 > 912673 := by sorry
  linarith