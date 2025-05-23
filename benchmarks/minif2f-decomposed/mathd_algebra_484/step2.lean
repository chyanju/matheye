theorem h₀  : Real.log 27 = 3 * Real.log 3 :=
  by
  have h₀₁ : Real.log 27 = Real.log (3 ^ 3) := by sorry
  rw [h₀₁]
  have h₀₂ : Real.log (3 ^ 3) = 3 * Real.log 3 := by sorry
  rw [h₀₂] <;> linarith [Real.log_pos (by norm_num : (1 : ℝ) < 3)]