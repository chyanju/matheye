theorem h₃ (n : ℕ) (h₀ : 0 < n) (h₁ : n.gcd 40 = 10) (h₂ : n.lcm 40 = 280) : n * 40 = 2800 :=
  by
  have h₃₁ : Nat.gcd n 40 * Nat.lcm n 40 = n * 40 := by sorry
  rw [h₁, h₂] at h₃₁ <;> norm_num at h₃₁ ⊢ <;> linarith