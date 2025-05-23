theorem h₈ (x : ℝ) (h₀ : 0 ≤ 3 - x) (h₁ : 0 ≤ x + 1) (h₂ : 1 / 2 < √(3 - x) - √(x + 1)) (h₃ : -1 ≤ x) (h₄ : √(3 - x) - √(x + 1) > 1 / 2) (h₅ : √(3 - x) > √(x + 1) + 1 / 2) (h₆ : 3 - x > x + 1 + √(x + 1) + 1 / 4) (h₇ : 7 - 8 * x > 4 * √(x + 1)) : x < 7 / 8 := by
  by_contra h
  have h₈₁ : x ≥ 7 / 8 := by sorry
  have h₈₂ : 7 - 8 * x ≤ 0 := by sorry
  have h₈₃ : 4 * Real.sqrt (x + 1) ≥ 0 := by sorry
  linarith