theorem h₂₅ (a b c d : ℝ) (h₀ : 0 < a ∧ 0 < b ∧ 0 < c ∧ 0 < d) (h₁ : a ^ 2 / b + b ≥ 2 * a) (h₂₁ : 0 < c) (h₂₂ : 0 < b) (h₂₃ : 0 < b ^ 2 / c) (h₂₄ : b ^ 2 / c * c = b ^ 2) : b ^ 2 / c + c ≥ 2 * b := by
  have h₂₅₁ : 0 < b ^ 2 / c := by sorry
  have h₂₅₂ : 0 < c := by sorry
  have h₂₅₃ : 0 < b ^ 2 / c * c := by sorry
  nlinarith [sq_nonneg (b - c), sq_nonneg (b ^ 2 / c - c), sq_nonneg (b ^ 2 / c - b), sq_nonneg (c - b)]