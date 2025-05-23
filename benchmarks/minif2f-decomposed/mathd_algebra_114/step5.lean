theorem h₃ (a : ℝ) (h₀ : a = 8) (h₁ : a > 0) (h₂ : (a ^ 2) ^ (1 / 3) = a ^ (2 / 3)) : (16 * (a ^ 2) ^ (1 / 3)) ^ (1 / 3) = (16 * a ^ (2 / 3)) ^ (1 / 3) := by
  rw [h₂] <;> simp_all [Real.rpow_def_of_pos, Real.log_mul, Real.log_rpow, Real.log_pow, mul_assoc] <;> ring_nf at * <;>
      norm_num at * <;>
    linarith