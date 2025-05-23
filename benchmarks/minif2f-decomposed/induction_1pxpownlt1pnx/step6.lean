theorem h₃ (x : ℝ) (n : ℕ) (h₀ : -1 < x) (h₁ : 0 < n) (h_base : 1 + 1 * x ≤ (1 + x) ^ 1) (k : ℕ) (hk_pos : 0 < k) (hk_ineq : 1 + (↑k : ℝ) * x ≤ (1 + x) ^ k) (h₁_pos : 0 < 1 + x) (h₂ : (1 + x) ^ (k + 1) = (1 + x) ^ k * (1 + x)) : (1 + (↑k : ℝ) * x) * (1 + x) = 1 + (↑(k + 1) : ℝ) * x + (↑k : ℝ) * x ^ 2 := by
  ring_nf <;> field_simp [h₁_pos.ne'] <;> ring_nf <;> simp [add_assoc, add_comm, add_left_comm] <;> ring_nf at * <;>
              norm_cast <;>
            ring_nf at * <;>
          field_simp [h₁_pos.ne'] at * <;>
        ring_nf at * <;>
      norm_cast at * <;>
    linarith