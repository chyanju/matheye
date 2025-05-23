theorem h₅ (x y z : ℝ) (h₀ : 0 < x ∧ 0 < y ∧ 0 < z) (h₁ : x + 1 / y = 4) (h₂ : y + 1 / z = 1) (h₃ : z + 1 / x = 7 / 3) (h₄ : x * y + 1 = 4 * y) : y * z + 1 = z := by
  have h₅₁ : z ≠ 0 := by sorry
  have h₅₂ : y + 1 / z = 1 := h₂
  field_simp at h₅₂ ⊢
  nlinarith [h₀.1, h₀.2.1, h₀.2.2]