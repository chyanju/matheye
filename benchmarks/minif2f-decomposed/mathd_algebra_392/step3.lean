theorem h₂₁ (n : ℕ) (h₀ : Even n) (h₁ : ((↑n : ℤ) - 2) ^ 2 + (↑n : ℤ) ^ 2 + ((↑n : ℤ) + 2) ^ 2 = 12296) : 3 * (↑n : ℤ) ^ 2 + 8 = 12296 :=
  by
  have h₂₂ : (↑n - 2 : ℤ) ^ 2 + (↑n : ℤ) ^ 2 + (↑n + 2 : ℤ) ^ 2 = 12296 := by sorry
  ring_nf at h₂₂ ⊢ <;> nlinarith