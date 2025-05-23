theorem h₄ (n : ℕ) (h₀ : n < 101) (h₁ : 101 ∣ 123456 - n) (h₂ : 123456 % 101 = 34) (h₃ : n % 101 = 34) : n = 34 :=
  by
  have h₅ : n % 101 = n := by sorry
  rw [h₅] at h₃
  omega