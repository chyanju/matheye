theorem h₄₃ (z : ℂ) (h₀ : 12 * (Complex.normSq : ℂ → ℝ) z = 2 * (Complex.normSq : ℂ → ℝ) (z + 2) + (Complex.normSq : ℂ → ℝ) (z ^ 2 + 1) + 31) (h₁ : z.re = -1) (h₂ : z.re * z.re + z.im * z.im = 6) (h₃ : z ≠ 0) (h₄₂ : z.im * z.im = 5) : z.im = √5 ∨ z.im = -√5 :=
  by
  apply or_iff_not_imp_left.mpr
  intro h₄₄
  apply eq_of_sub_eq_zero
  apply mul_left_cancel₀ (sub_ne_zero.mpr h₄₄)
  nlinarith [Real.sqrt_nonneg 5, Real.sq_sqrt (show (0 : ℝ) ≤ 5 by norm_num)]