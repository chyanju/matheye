theorem h₁₀ (a b c d : ℝ) (h₀ : b = a ^ 2) (h₁ : a + b = 1) (h₂ : d = c ^ 2) (h₃ : c + d = 1) (h₄ : a ≠ c) (h₅ : a ^ 2 + a - 1 = 0) (h₆ : c ^ 2 + c - 1 = 0) (h₇ : a + c = -1) (h₈ : a * c = -1) (h₉ : (a - c) ^ 2 = 5) : (b - d) ^ 2 = 5 :=
  by
  have h₁₀₁ : b - d = -(a - c) := by sorry
  have h₁₀₂ : (b - d) ^ 2 = 5 := by sorry
  exact h₁₀₂