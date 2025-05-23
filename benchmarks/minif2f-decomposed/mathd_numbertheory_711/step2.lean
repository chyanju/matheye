theorem h₃ (m n : ℕ) (h₀ : 0 < m ∧ 0 < n) (h₁ : m.gcd n = 8) (h₂ : m.lcm n = 112) : m * n = 896 :=
  by
  have h₃₁ : Nat.gcd m n * Nat.lcm m n = m * n := by sorry
  rw [h₁, h₂] at h₃₁
  norm_num at h₃₁ ⊢ <;> nlinarith