theorem h₅ (x y : ℕ) (h₀ : x % 3 = 2) (h₁ : y % 5 = 4) (h₂ : x % 10 = y % 10) : y % 10 % 5 = y % 5 := by
  have h₅₁ : y % 10 % 5 = y % 5 := by sorry
  exact h₅₁