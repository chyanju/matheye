theorem h₂ (a b c d : ℝ) (h₀ : 0 < a ∧ 0 < b ∧ 0 < c ∧ 0 < d) (h₁ : a ^ 2 / b + b ≥ 2 * a) : b ^ 2 / c + c ≥ 2 * b := by
  have h₂₁ : 0 < c := by sorry
  have h₂₂ : 0 < b := by sorry
  have h₂₃ : 0 < b ^ 2 / c := by sorry
  have h₂₄ : b ^ 2 / c * c = b ^ 2 := by sorry
  have h₂₅ : b ^ 2 / c + c ≥ 2 * b := by sorry
  exact h₂₅