theorem h₄ (m n : ℕ) (h₀ : 0 < m ∧ 0 < n) (h₁ : m.gcd n = 8) (h₂ : m.lcm n = 112) (h₃ : m * n = 896) : m ∣ 112 := by
  have h₄₁ : m ∣ Nat.lcm m n := Nat.dvd_lcm_left m n
  rw [h₂] at h₄₁
  exact h₄₁