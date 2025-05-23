theorem amc12b_2020_p6 (n : ℕ) (h₀ : 9 ≤ n) : ∃ x, (↑x : ℝ) ^ 2 = ((↑(n + 2)! : ℝ) - (↑(n + 1)! : ℝ)) / (↑n ! : ℝ) :=
  by
  have h₁ : ((n + 1 : ℕ) : ℝ) ^ 2 = ((n + 2)! - (n + 1)!) / n ! := by sorry
  have h₂ : ∃ x : ℕ, (x : ℝ) ^ 2 = ((n + 2)! - (n + 1)!) / n ! := by sorry
  apply h₂