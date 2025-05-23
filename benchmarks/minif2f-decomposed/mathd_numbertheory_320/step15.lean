theorem h₅ (n : ℕ) (h₀ : n < 101) (h₁ : 101 ∣ 123456 - n) (h₂ : 123456 % 101 = 34) (h₃ : n % 101 = 34) : n % 101 = n := by
  apply Nat.mod_eq_of_lt
  exact h₀