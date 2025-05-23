theorem h₁₀ (x p : ℝ) (f : ℝ → ℝ) (h₀ : 0 < p ∧ p < 15) (h₁ : p ≤ x ∧ x ≤ 15) (h₂ : f x = |x - p| + |x - 15| + |x - p - 15|) (h₃ : x - p ≥ 0) (h₄ : x - 15 ≤ 0) (h₅ : x - p - 15 ≤ 0) (h₆ : |x - p| = x - p) (h₇ : |x - 15| = 15 - x) (h₈ : |x - p - 15| = p + 15 - x) (h₉ : f x = 30 - x) : 15 ≤ f x := by
  rw [h₉]
  have h₁₀₁ : x ≤ 15 := h₁.2
  linarith