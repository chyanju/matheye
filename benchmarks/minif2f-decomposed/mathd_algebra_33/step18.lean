theorem h₇₁ (x y z : ℝ) (h₀ : x ≠ 0) (h₁ : 2 * x = 5 * y) (h₂ : 7 * y = 10 * z) (h₃ : 14 * x = 35 * y) (h₄ : 35 * y = 50 * z) (h₅ : 14 * x = 50 * z) (h₆ : z = 7 / 25 * x) : 7 / 25 * x / x = 7 / 25 := by
  have h₇₂ : x ≠ 0 := h₀
  field_simp [h₇₂] <;> ring_nf <;> field_simp [h₇₂] <;> ring_nf