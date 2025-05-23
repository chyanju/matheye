theorem h₅ (a b c : ℝ) (h₀ : a ≤ b ∧ b ≤ c) (h₁ : a + b + c = 2) (h₂ : a * b + b * c + c * a = 1) (h₃ : 0 ≤ a) (h₄ : 1 ≤ c) : c ≤ 4 / 3 := by
  have h₅₁ : a + b + c = 2 := h₁
  have h₅₂ : a * b + b * c + c * a = 1 := h₂
  have h₅₃ : a ≤ b := h₀.1
  have h₅₄ : b ≤ c := h₀.2
  have h₅₅ : 0 ≤ a := h₃
  have h₅₆ : 1 ≤ c := h₄
  have h₅₇ : (b - c) ^ 2 ≥ 0 := by sorry
  have h₅₈ : c ≤ 4 / 3 := by sorry
  exact h₅₈ <;> linarith