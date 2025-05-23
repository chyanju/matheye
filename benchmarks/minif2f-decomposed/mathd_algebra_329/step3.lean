theorem h₂₁ (x y : ℝ) (h₀ : 3 * y = x) (h₁ : 2 * x + 5 * y = 11) : 11 * y = 11 := by
  calc
    11 * y = 2 * x + 5 * y := by
      have h₂₂ : x = 3 * y := by linarith
      rw [h₂₂] <;> ring_nf <;> linarith
    _ = 11 := by linarith