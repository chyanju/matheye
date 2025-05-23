theorem h₂ (s : ℝ → ℝ → ℝ) (h₀ : ∀ (x : ℝ), x ≠ 0 → ∀ (y : ℝ), y ≠ 0 → s x y = (1 / y - 1 / x) / (x - y)) (h₁ : s 3 11 = (1 / 11 - 1 / 3) / (3 - 11)) : s 3 11 = 1 / 33 := by
  rw [h₁]
  norm_num [div_eq_mul_inv, mul_assoc] <;> field_simp <;> ring <;> norm_num