theorem h₇₁ (a d : ℝ) (h₀ : ∑ k ∈ Finset.range 5, (a + (↑k : ℝ) * d) = 70) (h₁ : ∑ k ∈ Finset.range 10, (a + (↑k : ℝ) * d) = 210) (h₂ : 5 * a + 10 * d = 70) (h₃ : 10 * a + 45 * d = 210) (h₄ : a + 2 * d = 14) (h₅ : 2 * a + 9 * d = 42) (h₆ : d = 14 / 5) : a = 42 / 5 := by
  have h₇₂ : a + 2 * d = 14 := h₄
  have h₇₃ : d = 14 / 5 := h₆
  rw [h₇₃] at h₇₂
  ring_nf at h₇₂ ⊢
  linarith