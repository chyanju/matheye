theorem h₄ (x : ℝ) (h₀ : x ≠ -1) (h₁ : (x - 9) / (x + 1) = 2) (h₂ : x + 1 ≠ 0) (h₃ : x - 9 = 2 * (x + 1)) : x = -11 := by
  have h₅ : x - 9 = 2 * (x + 1) := h₃
  have h₆ : x = -11 := by sorry
  exact h₆