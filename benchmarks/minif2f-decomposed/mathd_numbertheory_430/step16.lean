theorem h₁₁ (a b c : ℕ) (h₀ : 1 ≤ a ∧ a ≤ 9) (h₁ : 1 ≤ b ∧ b ≤ 9) (h₂ : 1 ≤ c ∧ c ≤ 9) (h₃ : a ≠ b) (h₄ : a ≠ c) (h₅ : b ≠ c) (h₆ : a + b = c) (h₇ : 10 * a + a - b = 2 * c) (h₈ : c * b = 10 * a + a + a) (h₉ : b = 3 * a) (h₁₀ : a ≤ 3) : c = 4 * a := by
  have h₁₁₁ : c = a + b := by sorry
  rw [h₁₁₁]
  have h₁₁₂ : b = 3 * a := h₉
  rw [h₁₁₂] <;> ring <;> omega