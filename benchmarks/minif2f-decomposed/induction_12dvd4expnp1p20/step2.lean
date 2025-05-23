theorem h₁ (n : ℕ) : 4 ^ (n + 1) % 12 = 4 :=
  by
  have h₂ : ∀ n : ℕ, (4 ^ (n + 1)) % 12 = 4 := by sorry
  apply h₂