theorem h₂ (x : ℝ) (h₀ h₁ : x / 50 = 40) : x = 40 * 50 := by
  calc
    x = (x / 50) * 50 := by ring
    _ = 40 * 50 := by rw [h₀] <;> ring