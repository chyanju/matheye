theorem h₆ (x : ℝ) (a b c : ℕ) (h₀ : 0 < a ∧ 0 < b ∧ 0 < c ∧ 0 ≤ x) (h₁ : 2 * x ^ 2 = 4 * x + 9) (h₂ : x = ((↑a : ℝ) + √(↑b : ℝ)) / (↑c : ℝ)) (h₃ : c = 2) (h₄ : x = ((↑a : ℝ) + √(↑b : ℝ)) / 2) (h₅ : 2 * x ^ 2 = 4 * x + 9) : (↑a : ℝ) > 0 := by
  have h₆₁ : 0 < a := h₀.1
  exact mod_cast h₆₁