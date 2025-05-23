theorem h₁ (x y : ℤ) : (4 * x ^ 3 - 7 * y ^ 3) % 7 = 4 * x ^ 3 % 7 :=
  by
  have h₂ : (4 * x ^ 3 - 7 * y ^ 3 : ℤ) % 7 = (4 * x ^ 3 : ℤ) % 7 - (7 * y ^ 3 : ℤ) % 7 := by sorry
  have h₃ : (7 * y ^ 3 : ℤ) % 7 = 0 := by sorry
  omega