theorem h₆ (f : ℤ → ℤ) (h₀ : ∀ (n : ℤ), Odd n → f n = n ^ 2) (h₁ : ∀ (n : ℤ), Even n → f n = n ^ 2 - 4 * n - 1) (h₂ h₅ : Even 4) : f 4 = 4 ^ 2 - 4 * 4 - 1 := by
  apply h₁
  exact h₅