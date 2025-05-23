theorem h₂₁₁ (n : ℕ) (h₀ : 0 < n) (h₁ : (21 * n + 4).gcd (14 * n + 3) = (14 * n + 3).gcd (7 * n + 1)) : (14 * n + 3).gcd (7 * n + 1) = (7 * n + 1).gcd 1 := by
  rw [show 14 * n + 3 = 2 * (7 * n + 1) + 1 by ring_nf <;> omega] <;>
        simp [Nat.gcd_comm, Nat.gcd_add_mul_right_right, Nat.gcd_assoc] <;>
      ring_nf at * <;>
    omega