theorem h₃ (n : ℕ) (h₀ : 9 ≤ n) : (n + 2)! = (n + 2) * (n + 1) * n ! := by
  calc
    (n + 2 : ℕ)! = (n + 2 : ℕ) * (n + 1 : ℕ)! := by simp [Nat.factorial_succ, Nat.mul_succ] <;> ring_nf
    _ = (n + 2 : ℕ) * ((n + 1 : ℕ) * n !) := by simp [Nat.factorial_succ, Nat.mul_succ] <;> ring_nf
    _ = (n + 2 : ℕ) * (n + 1 : ℕ) * n ! := by ring_nf <;> simp [Nat.mul_assoc] <;> ring_nf