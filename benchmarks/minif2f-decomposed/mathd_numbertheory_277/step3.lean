theorem h₃ (m n : ℕ) (h₀ : m.gcd n = 6) (h₁ : m.lcm n = 126) (h₂ : m ≠ 0) : n ≠ 0 := by
  by_contra h
  rw [h] at h₁ h₀
  simp [Nat.lcm] at h₁ h₀ <;> norm_num at h₁ h₀ ⊢ <;> aesop