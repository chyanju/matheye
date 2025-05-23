theorem h₂₂ (n : ℕ) (h₀ : n = 11) (h₁ : 1 / 4 = 0) (h₂₁ : n + 1 > 0) : 0 ^ (n + 1) = 0 := by
  have h₂₂₁ : n + 1 ≠ 0 := by sorry
  simp [h₂₂₁, Nat.zero_pow]