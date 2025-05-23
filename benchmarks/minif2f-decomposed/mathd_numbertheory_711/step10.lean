theorem h₇₁ (n : ℕ) (h₀ : 0 < 8 ∧ 0 < n) (h₁ : Nat.gcd 8 n = 8) (h₂ : Nat.lcm 8 n = 112) (h₃ : 8 * n = 896) (h₄ : 8 ∣ 112) (h₅ : 8 ∣ 8) : n = 112 := by
  have h₇₂ : 8 * n = 896 := by sorry
  nlinarith