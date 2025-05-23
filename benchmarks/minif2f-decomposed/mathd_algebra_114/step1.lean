theorem mathd_algebra_114 (a : ℝ) (h₀ : a = 8) : (16 * (a ^ 2) ^ (1 / 3)) ^ (1 / 3) = 4 :=
  by
  have h₁ : a > 0 := by sorry
  have h₂ : (a ^ 2 : ℝ) ^ ((1 : ℝ) / 3) = a ^ (2 / 3 : ℝ) := by sorry
  have h₃ : (16 * (a ^ 2 : ℝ) ^ ((1 : ℝ) / 3)) ^ ((1 : ℝ) / 3) = (16 * a ^ (2 / 3 : ℝ)) ^ ((1 : ℝ) / 3) := by sorry
  have h₄ : a ^ (2 / 3 : ℝ) = 4 := by sorry
  have h₅ : (16 * (a ^ 2 : ℝ) ^ ((1 : ℝ) / 3)) ^ ((1 : ℝ) / 3) = (16 * (4 : ℝ)) ^ ((1 : ℝ) / 3) := by sorry
  have h₆ : (16 * (4 : ℝ)) ^ ((1 : ℝ) / 3) = (64 : ℝ) ^ ((1 : ℝ) / 3) := by sorry
  have h₇ : (64 : ℝ) ^ ((1 : ℝ) / 3) = 4 := by sorry
  have h₈ : (16 * (a ^ 2) ^ ((1 : ℝ) / 3)) ^ ((1 : ℝ) / 3) = 4 := by sorry
  rw [h₈] <;> simp_all [Real.rpow_def_of_pos, Real.log_mul, Real.log_rpow, Real.log_pow, mul_assoc] <;> ring_nf at * <;>
      norm_num at * <;>
    linarith