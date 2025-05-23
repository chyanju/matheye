theorem h₂ (f z : ℂ) (h₀ : f + 3 * z = 11) (h₁ : 3 * (f - 1) - 5 * z = -68) : f.im = 0 := by
  have h₂₁ := h₀
  have h₂₂ := h₁
  simp [Complex.ext_iff, Complex.add_re, Complex.add_im, Complex.mul_re, Complex.mul_im, Complex.sub_re, Complex.sub_im,
    Complex.one_re, Complex.one_im, Complex.ext_iff, Complex.add_re, Complex.add_im, Complex.mul_re, Complex.mul_im,
    Complex.sub_re, Complex.sub_im, Complex.one_re, Complex.one_im] at h₂₁ h₂₂ ⊢
  nlinarith