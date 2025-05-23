theorem h₄₃ (x y : ℝ) (n : NNReal) (h₀ : x < 0 ∧ y < 0) (h₁ : |y| = 6) (h₂ : √((x - 8) ^ 2 + (y - 3) ^ 2) = 15) (h₃ : √(x ^ 2 + y ^ 2) = √(↑n : ℝ)) (h₄₁ : y < 0) (h₄₂ : |y| = 6) : y = -6 := by
  rw [abs_of_neg h₄₁] at h₄₂
  linarith