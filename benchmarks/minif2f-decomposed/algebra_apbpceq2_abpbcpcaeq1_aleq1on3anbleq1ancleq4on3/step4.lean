theorem h₅ (a b c : ℝ) (h₀ : a ≤ b ∧ b ≤ c) (h₁ : a + b + c = 2) (h₂ : a * b + b * c + c * a = 1) (h : ¬0 ≤ a) (h₄ : a < 0) : a * (4 - 3 * a) < 0 := by
  have h₅₁ : 4 - 3 * a > 0 := by sorry
  nlinarith