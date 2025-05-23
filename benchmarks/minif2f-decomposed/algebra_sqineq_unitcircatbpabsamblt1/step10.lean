theorem h₆ (a b : ℝ) (h₀ : a ^ 2 + b ^ 2 = 1) (h₁ : a ≤ 1) (h₂ : a ≥ -1) (h₃ : b ≤ 1) (h₄ : b ≥ -1) (h₅ : a ≥ b → a * b + |a - b| ≤ 1) : a < b → a * b + |a - b| ≤ 1 := by
  intro h₆
  have h₆₁ : abs (a - b) = b - a := by sorry
  rw [h₆₁]
  have h₆₂ : a * b + (b - a) ≤ 1 := by sorry
  linarith