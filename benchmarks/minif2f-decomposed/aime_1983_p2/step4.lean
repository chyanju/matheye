theorem h₅ (x p : ℝ) (f : ℝ → ℝ) (h₀ : 0 < p ∧ p < 15) (h₁ : p ≤ x ∧ x ≤ 15) (h₂ : f x = |x - p| + |x - 15| + |x - p - 15|) (h₃ : x - p ≥ 0) (h₄ : x - 15 ≤ 0) : x - p - 15 ≤ 0 := by
  have h₅₁ : x ≤ 15 := h₁.2
  have h₅₂ : p > 0 := h₀.1
  linarith