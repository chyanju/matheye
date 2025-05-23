theorem h₃₃ (n : ℕ) (h₀ : Even n) (h₁ : ((↑n : ℤ) - 2) ^ 2 + (↑n : ℤ) ^ 2 + ((↑n : ℤ) + 2) ^ 2 = 12296) (h₂ : (↑n : ℤ) ^ 2 = 4096) (h : ¬n ≤ 64) (h₃₂ : n ≥ 65) : (↑n : ℤ) ^ 2 > 4096 := by
  have h₃₄ : (n : ℤ) ≥ 65 := by sorry
  nlinarith