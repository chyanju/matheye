theorem mathd_algebra_296  : |(3491 - 60) * (3491 + 60) - 3491 ^ 2| = 3600 :=
  by
  have h₁ : (3491 - 60 : ℕ) = 3431 := by sorry
  have h₂ : (3491 + 60 : ℕ) = 3551 := by sorry
  have h₃ : (3431 : ℕ) * 3551 = 12183481 := by sorry
  have h₄ : (3491 : ℕ) ^ 2 = 12187081 := by sorry
  have h₅ : ((3491 - 60) * (3491 + 60) - 3491 ^ 2 : ℤ) = -3600 := by sorry
  have h₆ : abs ((3491 - 60) * (3491 + 60) - 3491 ^ 2 : ℤ) = 3600 := by sorry
  apply h₆