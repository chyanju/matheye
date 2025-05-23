theorem h₂₁ (x y z : ℝ) (h₀ : 3 * x + 4 * y - 12 * z = 10) (h₁ : -2 * x - 3 * y + 9 * z = -4) : 9 * x + 12 * y - 36 * z = 30 :=
  by
  have h₂₂ : 3 * (3 * x + 4 * y - 12 * z) = 3 * 10 := by sorry
  ring_nf at h₂₂ ⊢
  linarith