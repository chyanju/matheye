theorem h₁₁ (a b c d : ℝ) (h₀ : b = a ^ 2) (h₁ : a + b = 1) (h₂ : d = c ^ 2) (h₃ : c + d = 1) (h₄ : a ≠ c) (h₅ : a ^ 2 + a - 1 = 0) (h₆ : c ^ 2 + c - 1 = 0) (h₇ : a + c = -1) (h₈ : a * c = -1) (h₉ : (a - c) ^ 2 = 5) (h₁₀ : (b - d) ^ 2 = 5) : (a - c) ^ 2 + (b - d) ^ 2 = 10 :=
  by
  have h₁₁₁ : (a - c) ^ 2 = 5 := h₉
  have h₁₁₂ : (b - d) ^ 2 = 5 := h₁₀
  linarith