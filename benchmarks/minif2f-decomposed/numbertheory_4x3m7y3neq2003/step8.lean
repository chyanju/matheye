theorem h₂ (x y : ℤ) (h₁ : (4 * x ^ 3 - 7 * y ^ 3) % 7 = 4 * x ^ 3 % 7) : 4 * x ^ 3 % 7 = 4 * (x % 7) ^ 3 % 7 :=
  by
  have h₃ : (x : ℤ) % 7 = (x % 7 : ℤ) := by sorry
  have h₄ : (4 * x ^ 3 : ℤ) % 7 = (4 * (x % 7) ^ 3 : ℤ) % 7 := by sorry
  exact h₄