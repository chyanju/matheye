theorem h₃ (x : ℝ) (h₀ : x ≠ -1) (h₁ : (x - 9) / (x + 1) = 2) (h₂ : x + 1 ≠ 0) : x - 9 = 2 * (x + 1) := by
  have h₄ : (x - 9) / (x + 1) = 2 := h₁
  have h₅ : x + 1 ≠ 0 := h₂
  field_simp at h₄
  linarith