theorem h₄ (n : ℕ) (h₀ h₃ : 3 * n % 11 = 2) : 3 * (n % 11) % 11 = 3 * n % 11 :=
  by
  have h₅ : 3 * (n % 11) % 11 = (3 * n) % 11 := by sorry
  omega