theorem h₄ (n : ℕ) (h₀ : 9 ≤ n) (h₂ : (n + 2)! = (n + 2) * (n + 1) * n !) : (n + 1)! = (n + 1) * n ! := by
  calc
    (n + 1 : ℕ)! = (n + 1 : ℕ) * n ! := by simp [Nat.factorial_succ, Nat.mul_succ] <;> ring_nf
    _ = (n + 1 : ℕ) * n ! := by rfl