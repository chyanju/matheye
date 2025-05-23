theorem h₃ (v i z : ℂ) (h₀ : v = i * z) (h₁ : v = 1 + Complex.I) (h₂ : z = 2 - Complex.I) : i * z = 1 + Complex.I := by
  rw [h₀] at h₁
  linear_combination h₁