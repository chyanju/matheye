theorem h₂ (h₀ : Real.log 27 = 3 * Real.log 3) : Real.log 3 ≠ 0 := by
  have h₂₁ : Real.log 3 > 0 := Real.log_pos (by norm_num)
  linarith