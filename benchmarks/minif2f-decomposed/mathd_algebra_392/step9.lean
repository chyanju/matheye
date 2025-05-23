theorem h₃₁ (n : ℕ) (h₀ : Even n) (h₁ : ((↑n : ℤ) - 2) ^ 2 + (↑n : ℤ) ^ 2 + ((↑n : ℤ) + 2) ^ 2 = 12296) (h₂ : (↑n : ℤ) ^ 2 = 4096) : n ≤ 64 := by
  by_contra h
  have h₃₂ : n ≥ 65 := by sorry
  have h₃₃ : (n : ℤ) ^ 2 > 4096 := by sorry
  linarith