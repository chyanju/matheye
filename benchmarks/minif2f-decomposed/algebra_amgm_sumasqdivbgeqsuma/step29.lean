theorem h₄ (a b c d : ℝ) (h₀ : 0 < a ∧ 0 < b ∧ 0 < c ∧ 0 < d) (h₁ : a ^ 2 / b + b ≥ 2 * a) (h₂ : b ^ 2 / c + c ≥ 2 * b) (h₃ : c ^ 2 / d + d ≥ 2 * c) : d ^ 2 / a + a ≥ 2 * d := by
  have h₄₁ : 0 < a := by sorry
  have h₄₂ : 0 < d := by sorry
  have h₄₃ : 0 < d ^ 2 / a := by sorry
  have h₄₄ : d ^ 2 / a * a = d ^ 2 := by sorry
  have h₄₅ : d ^ 2 / a + a ≥ 2 * d := by sorry
  exact h₄₅