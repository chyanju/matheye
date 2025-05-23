theorem mathd_algebra_76 (f : ℤ → ℤ) (h₀ : ∀ (n : ℤ), Odd n → f n = n ^ 2) (h₁ : ∀ (n : ℤ), Even n → f n = n ^ 2 - 4 * n - 1) : f 4 = -1 := by
  have h₂ : Even (4 : ℤ) := by sorry
  have h₃ : f 4 = (4 : ℤ) ^ 2 - 4 * (4 : ℤ) - 1 := by sorry
  have h₄ : f 4 = -1 := by sorry
  apply h₄