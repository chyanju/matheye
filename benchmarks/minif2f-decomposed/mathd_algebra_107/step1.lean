theorem mathd_algebra_107 (x y : ℝ) (h₀ : x ^ 2 + 8 * x + y ^ 2 - 6 * y = 0) : (x + 4) ^ 2 + (y - 3) ^ 2 = 5 ^ 2 :=
  by
  have h₁ : (x + 4) ^ 2 + (y - 3) ^ 2 = x ^ 2 + 8 * x + y ^ 2 - 6 * y + 25 := by sorry
  have h₂ : (x + 4) ^ 2 + (y - 3) ^ 2 = 25 := by sorry
  have h₃ : (x + 4) ^ 2 + (y - 3) ^ 2 = 5 ^ 2 := by sorry
  exact h₃