theorem h₂ (x y : ℝ) (h₀ : x ^ 2 + 8 * x + y ^ 2 - 6 * y = 0) (h₁ : (x + 4) ^ 2 + (y - 3) ^ 2 = x ^ 2 + 8 * x + y ^ 2 - 6 * y + 25) : (x + 4) ^ 2 + (y - 3) ^ 2 = 25 := by
  rw [h₁]
  linarith