theorem h₂ (x : ℝ) (h₀ : x / 50 = 40) (h₁ : x = 40 * 50) : x = 2000 := by
  calc
    x = 40 * 50 := h₁
    _ = 2000 := by norm_num