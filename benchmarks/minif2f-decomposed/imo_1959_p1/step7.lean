theorem h₃ (n : ℕ) (h₀ : 0 < n) (h₁ : (21 * n + 4).gcd (14 * n + 3) = (14 * n + 3).gcd (7 * n + 1)) (h₂ : (14 * n + 3).gcd (7 * n + 1) = (7 * n + 1).gcd 1) : (7 * n + 1).gcd 1 = 1 :=
  by
  have h₃₁ : Nat.gcd (7 * n + 1) 1 = 1 := by sorry
  exact h₃₁