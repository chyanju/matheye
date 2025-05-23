theorem h₆ (x y z : ℝ) (h₀ : 0 < x ∧ 0 < y ∧ 0 < z) (h₁ : x + 1 / y = 4) (h₂ : y + 1 / z = 1) (h₃ : z + 1 / x = 7 / 3) (h₄ : x * y + 1 = 4 * y) (h₅ : y * z + 1 = z) : x * z + 1 = 7 / 3 * x := by
  have h₆₁ : x ≠ 0 := by sorry
  have h₆₂ : z + 1 / x = 7 / 3 := h₃
  field_simp at h₆₂ ⊢
  nlinarith [h₀.1, h₀.2.1, h₀.2.2]