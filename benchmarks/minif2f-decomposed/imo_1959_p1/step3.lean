theorem h₁₀ (n : ℕ) (h₀ : 0 < n) : (21 * n + 4).gcd (14 * n + 3) = (14 * n + 3).gcd (7 * n + 1) :=
  by
  rw [show 21 * n + 4 = 1 * (14 * n + 3) + (7 * n + 1) by ring_nf <;> omega]
  rw [Nat.gcd_comm] <;> simp [Nat.gcd_comm, Nat.gcd_add_mul_right_right, Nat.gcd_assoc, Nat.gcd_assoc] <;>
      ring_nf at * <;>
    omega