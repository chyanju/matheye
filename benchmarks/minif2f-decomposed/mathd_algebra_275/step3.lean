theorem h₂ (x : ℝ) (h : (11 ^ (1 / 4)) ^ (3 * x - 3) = 1 / 5) (h₁ : 11 ^ (1 / 4) = 1) : (11 ^ (1 / 4)) ^ (3 * x - 3) = 1 := by
  rw [h₁] <;> simp [Real.one_rpow] <;> ring_nf <;> norm_num <;> linarith