theorem h₂ (a : ℝ) (h₀ : a ≠ 0) (h₁ : 8⁻¹ / 4⁻¹ - a⁻¹ = 1) : 8⁻¹ / 4⁻¹ = 1 / 2 := by
  norm_num [div_eq_mul_inv, mul_inv_rev, mul_assoc] <;> ring_nf at * <;> norm_num <;> linarith