theorem h₅ (x : ℝ) (h₀ : 0 < x) (h₁ : x ^ 2 - 10 * x - 29 ≠ 0) (h₂ : x ^ 2 - 10 * x - 45 ≠ 0) (h₃ : x ^ 2 - 10 * x - 69 ≠ 0) (h₄ : 1 / (x ^ 2 - 10 * x - 29) + 1 / (x ^ 2 - 10 * x - 45) - 2 / (x ^ 2 - 10 * x - 69) = 0) (h_y : x ^ 2 - 10 * x = 39) : x = 13 :=
  by
  have h₅₁ : x = 13 ∨ x = -3 := by sorry
  cases h₅₁ with
  | inl h₅₁ => exact h₅₁
  | inr h₅₁ =>
    have h₅₂ : x > 0 := h₀
    have h₅₃ : x = -3 := h₅₁
    linarith