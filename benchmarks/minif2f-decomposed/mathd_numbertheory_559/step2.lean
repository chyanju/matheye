theorem h₃ (x y : ℕ) (h₀ : x % 3 = 2) (h₁ : y % 5 = 4) (h₂ : x % 10 = y % 10) : x % 10 = 4 ∨ x % 10 = 9 :=
  by
  have h₄ : (x % 10) % 5 = 4 := by sorry
  have h₆ : x % 10 = 4 ∨ x % 10 = 9 := by sorry
  exact h₆