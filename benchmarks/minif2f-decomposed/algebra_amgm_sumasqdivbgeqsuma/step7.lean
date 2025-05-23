theorem h₁₅ (a b c d : ℝ) (h₀ : 0 < a ∧ 0 < b ∧ 0 < c ∧ 0 < d) (h₁₁ : 0 < b) (h₁₂ : 0 < a) (h₁₃ : 0 < a ^ 2 / b) (h₁₄ : a ^ 2 / b * b = a ^ 2) : a ^ 2 / b + b ≥ 2 * a := by
  have h₁₅₁ : 0 < a ^ 2 / b := by sorry
  have h₁₅₂ : 0 < b := by sorry
  have h₁₅₃ : 0 < a ^ 2 / b * b := by sorry
  nlinarith [sq_nonneg (a - b), sq_nonneg (a ^ 2 / b - b), sq_nonneg (a ^ 2 / b - a), sq_nonneg (b - a)]