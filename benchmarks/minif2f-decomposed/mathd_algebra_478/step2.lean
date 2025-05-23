theorem h₄ (b h v : ℝ) (h₀ : 0 < b ∧ 0 < h ∧ 0 < v) (h₁ : v = 1 / 3 * (b * h)) (h₂ : b = 30) (h₃ : h = 13 / 2) : v = 65 := by
  rw [h₁, h₂, h₃]
  norm_num [mul_assoc] <;> ring_nf at * <;> norm_num at * <;> linarith