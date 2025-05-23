theorem h₁₃ (z : ℂ) (h₀ : 12 * (Complex.normSq : ℂ → ℝ) z = 2 * (Complex.normSq : ℂ → ℝ) (z + 2) + (Complex.normSq : ℂ → ℝ) (z ^ 2 + 1) + 31) (h₁₁ : (Complex.normSq : ℂ → ℝ) z = z.re * z.re + z.im * z.im) (h₁₂ : (Complex.normSq : ℂ → ℝ) (z + 2) = (z.re + 2) * (z.re + 2) + z.im * z.im) : (Complex.normSq : ℂ → ℝ) (z ^ 2 + 1) =
    (z.re * z.re - z.im * z.im + 1) * (z.re * z.re - z.im * z.im + 1) + 2 * z.re * z.im * (2 * z.re * z.im) :=
  by
  simp [Complex.normSq_apply, Complex.ext_iff, pow_two] <;> ring_nf <;> field_simp [Real.sqrt_eq_iff_sq_eq] <;>
      ring_nf <;>
    nlinarith [sq_nonneg (z.re + z.im), sq_nonneg (z.re - z.im)]