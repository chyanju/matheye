theorem h₀₂ (h₀₁ : Real.log 27 = Real.log (3 ^ 3)) : Real.log (3 ^ 3) = 3 * Real.log 3 := by
  rw [Real.log_pow] <;> norm_num <;> linarith [Real.log_pos (by norm_num : (1 : ℝ) < 3)]