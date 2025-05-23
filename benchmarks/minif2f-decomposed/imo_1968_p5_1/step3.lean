theorem h₂₁ (a : ℝ) (f : ℝ → ℝ) (h₀ : 0 < a) (h₁ : ∀ (x : ℝ), f (x + a) = 1 / 2 + √(f x - f x ^ 2)) (x : ℝ) : f x = 1 / 2 + √(f (x - a) - f (x - a) ^ 2) :=
  by
  have h₂₂ := h₁ (x - a)
  ring_nf at h₂₂ ⊢
  linarith