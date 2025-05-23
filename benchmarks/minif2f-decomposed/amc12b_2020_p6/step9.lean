theorem h₆ (n : ℕ) (h₀ : 9 ≤ n) (h₂ : (n + 2)! = (n + 2) * (n + 1) * n !) (h₃ : (n + 1)! = (n + 1) * n !) (h₄ : (↑(n + 2)! : ℝ) = (↑(n + 2) : ℝ) * (↑(n + 1) : ℝ) * (↑n ! : ℝ)) (h₅ : (↑(n + 1)! : ℝ) = (↑(n + 1) : ℝ) * (↑n ! : ℝ)) : (↑(n + 2)! : ℝ) - (↑(n + 1)! : ℝ) = (↑(n + 1) : ℝ) ^ 2 * (↑n ! : ℝ) := by
  rw [h₄, h₅] <;> norm_num <;> ring_nf <;> norm_cast <;> simp [Nat.mul_assoc, Nat.mul_comm, Nat.mul_left_comm] <;>
            ring_nf <;>
          norm_num <;>
        simp [Nat.mul_assoc, Nat.mul_comm, Nat.mul_left_comm] <;>
      ring_nf <;>
    norm_num