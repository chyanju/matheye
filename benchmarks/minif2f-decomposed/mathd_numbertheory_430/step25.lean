theorem h₁₅ (a b c : ℕ) (h₀ : 1 ≤ a ∧ a ≤ 9) (h₁ : 1 ≤ b ∧ b ≤ 9) (h₂ : 1 ≤ c ∧ c ≤ 9) (h₃ : a ≠ b) (h₄ : a ≠ c) (h₅ : b ≠ c) (h₆ : a + b = c) (h₇ : 10 * a + a - b = 2 * c) (h₈ : c * b = 10 * a + a + a) (h₉ : b = 3 * a) (h₁₀ : a ≤ 3) (h₁₁ : c = 4 * a) (h₁₂ : a = 1) (h₁₃ : b = 3) (h₁₄ : c = 4) : a + b + c = 8 := by
  have h₁₅₁ : a = 1 := h₁₂
  have h₁₅₂ : b = 3 := h₁₃
  have h₁₅₃ : c = 4 := h₁₄
  subst_vars <;> norm_num