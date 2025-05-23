theorem h_x (x : ℝ) (n : ℕ) (a : ℕ → ℝ) (h₁ : ∀ (m : ℕ), a (m + 1) - a m = a (m + 2) - a (m + 1)) (h₂ : a 1 = 2 * x - 3) (h₃ : a 2 = 5 * x - 11) (h₄ : a 3 = 3 * x + 1) (h₅ : a n = 2009) : x = 4 := by
  have h₅₀ := h₁ 1
  have h₅₁ := h₁ 0
  have h₅₂ := h₁ 2
  norm_num at h₅₀ h₅₁ h₅₂
  simp [h₂, h₃, h₄] at h₅₀ h₅₁ h₅₂
  linarith