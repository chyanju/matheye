theorem h₅ (m n : ℕ) (h₀ : 0 < m ∧ 0 < n) (h₁ : m.gcd n = 8) (h₂ : m.lcm n = 112) (h₃ : m * n = 896) (h₄ : m ∣ 112) : 8 ∣ m := by
  have h₅₁ : Nat.gcd m n ∣ m := Nat.gcd_dvd_left m n
  rw [h₁] at h₅₁
  exact h₅₁