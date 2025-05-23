theorem h₄ (f : ℤ → ℤ) (h₀ : ∀ (n : ℤ), Odd n → f n = n ^ 2) (h₁ : ∀ (n : ℤ), Even n → f n = n ^ 2 - 4 * n - 1) (h₂ : Even 4) : f 4 = 4 ^ 2 - 4 * 4 - 1 :=
  by
  have h₅ : Even (4 : ℤ) := h₂
  have h₆ : f 4 = (4 : ℤ) ^ 2 - 4 * (4 : ℤ) - 1 := by sorry
  rw [h₆]