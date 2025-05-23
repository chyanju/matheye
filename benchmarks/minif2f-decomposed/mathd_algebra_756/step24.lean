theorem h₅ (a b : ℝ) (h₀ : 2 ^ a = 32) (h₁ : a ^ b = 125) (h₂ : a > 0) (h₃ : a = 5) (h₄ : b = 3) : b ^ a = 243 := by
  rw [h₄, h₃]
  have h₅₁ : (3 : ℝ) ^ (5 : ℝ) = 243 := by sorry
  rw [h₅₁] <;> norm_num