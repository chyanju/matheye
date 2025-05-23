theorem h₄ (x y : ℕ) (h₀ : x % 3 = 2) (h₁ : y % 5 = 4) (h₂ : x % 10 = y % 10) : x % 10 % 5 = 4 :=
  by
  have h₅ : (y % 10) % 5 = y % 5 := by sorry
  have h₅₂ : (x % 10) % 5 = (y % 10) % 5 := by sorry
  have h₅₃ : (y % 10) % 5 = 4 := by sorry
  omega