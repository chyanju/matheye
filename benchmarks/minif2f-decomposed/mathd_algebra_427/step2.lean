theorem h₃ (x y z : ℝ) (h₀ : 3 * x + y = 17) (h₁ : 5 * y + z = 14) (h₂ : 3 * x + 5 * z = 41) : 6 * x + 6 * y + 6 * z = 72 :=
  by
  have h₃₁ : 6 * x + 6 * y + 6 * z = (3 * x + y) + (5 * y + z) + (3 * x + 5 * z) := by sorry
  rw [h₃₁]
  linarith