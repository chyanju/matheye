theorem h₁₁₅ (x y z : ℝ) (a : ℕ → ℝ) (h₀ : 0 < a 0 ∧ 0 < a 4 ∧ 0 < a 8) (h₁ : a 1 < 0 ∧ a 2 < 0) (h₂ : a 3 < 0 ∧ a 5 < 0) (h₃ : a 6 < 0 ∧ a 7 < 0) (h₄ : 0 < a 0 + a 1 + a 2) (h₅ : 0 < a 3 + a 4 + a 5) (h₆ : 0 < a 6 + a 7 + a 8) (h₇ : a 0 * x + a 1 * y + a 2 * z = 0) (h₈ : a 3 * x + a 4 * y + a 5 * z = 0) (h₉ : a 6 * x + a 7 * y + a 8 * z = 0) (h₁₀ : x = 0) (h₁₁₁ : a 1 * y + a 2 * z = 0) (h₁₁₂ : a 4 * y + a 5 * z = 0) (h₁₁₃ : a 7 * y + a 8 * z = 0) (hy : ¬y = 0) (hy_pos : y > 0) (hz : z ≤ y) : a 3 * 0 + a 4 * y + a 5 * z ≥ (a 3 + a 4 + a 5) * y :=
  by
  have h₁₁₆ : a 3 * (0 : ℝ) ≥ a 3 * y := by sorry
  have h₁₁₈ : a 5 * z ≥ a 5 * y := by sorry
  nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁.1, h₁.2, h₂.1, h₂.2, h₃.1, h₃.2]