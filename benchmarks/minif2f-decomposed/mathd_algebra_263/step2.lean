theorem h₂ (y : ℝ) (h₀ : 0 ≤ 19 + 3 * y) (h₁ : √(19 + 3 * y) = 7) : 19 + 3 * y = 49 := by
  have h₂₁ : (Real.sqrt (19 + 3 * y)) ^ 2 = 7 ^ 2 := by sorry
  have h₂₂ : (Real.sqrt (19 + 3 * y)) ^ 2 = 19 + 3 * y := by sorry
  linarith