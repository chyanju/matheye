theorem algebra_sqineq_unitcircatbpabsamblt1 (a b : ℝ) (h₀ : a ^ 2 + b ^ 2 = 1) : a * b + |a - b| ≤ 1 :=
  by
  have h₁ : a ≤ 1 := by sorry
  have h₂ : a ≥ -1 := by sorry
  have h₃ : b ≤ 1 := by sorry
  have h₄ : b ≥ -1 := by sorry
  have h₅ : a ≥ b → a * b + abs (a - b) ≤ 1 := by sorry
  have h₆ : a < b → a * b + abs (a - b) ≤ 1 := by sorry
  have h₇ : a * b + abs (a - b) ≤ 1 := by sorry
  exact h₇