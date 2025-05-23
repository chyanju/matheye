theorem hy_ne_zero (x y : ℝ) (h₀ : x ≠ 1 ∧ y ≠ 1) (h₁ : Real.log x / Real.log 2 = Real.log 16 / Real.log y) (h₂ : x * y = 64) (hx_ne_zero : x ≠ 0) : y ≠ 0 := by
  intro h
  rw [h] at h₂
  norm_num at h₂ ⊢ <;> linarith