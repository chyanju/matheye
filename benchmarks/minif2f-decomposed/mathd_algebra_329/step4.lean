theorem h₃ (x y : ℝ) (h₀ : 3 * y = x) (h₁ : 2 * x + 5 * y = 11) (h₂ : y = 1) : x = 3 := by
  have h₃₁ : x = 3 * y := by sorry
  rw [h₃₁, h₂] <;> norm_num