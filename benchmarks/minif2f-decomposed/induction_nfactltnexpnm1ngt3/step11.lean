theorem h₆ (n : ℕ) (h₀ : 3 ≤ n) (h_base : 3! < 3 ^ (3 - 1)) (k : ℕ) (hk : 3 ≤ k) (hk_rec : k ! < k ^ (k - 1)) (h₁ : (k + 1)! = (k + 1) * k !) (h₂ : (k + 1) * k ! < (k + 1) * k ^ (k - 1)) (h₄ : k ≥ 3) (h₅ : k - 1 ≥ 2) : (k + 1) * k ^ (k - 1) ≤ (k + 1) ^ k := by
  calc
    (k + 1) * k ^ (k - 1) = (k + 1) * k ^ (k - 1) := rfl
    _ ≤ (k + 1) * (k + 1) ^ (k - 1) :=
      by
      have h₇ : k ^ (k - 1) ≤ (k + 1) ^ (k - 1) := by exact Nat.pow_le_pow_of_le_left (by linarith) _
      exact Nat.mul_le_mul_left _ h₇
    _ = (k + 1) ^ (k - 1 + 1) := by rw [Nat.mul_comm] <;> simp [Nat.pow_succ, Nat.mul_comm] <;> ring_nf
    _ ≤ (k + 1) ^ k :=
      by
      have h₈ : k - 1 + 1 ≤ k := by
        have h₉ : k - 1 + 1 ≤ k := by omega
        exact h₉
      exact Nat.pow_le_pow_of_le_right (by linarith) h₈