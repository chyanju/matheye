theorem mathd_algebra_171 (f : ℝ → ℝ) (h₀ : ∀ (x : ℝ), f x = 5 * x + 4) : f 1 = 9 :=
  by
  have h₁ : f 1 = 5 * (1 : ℝ) + 4 := by sorry
  have h₂ : f 1 = 9 := by sorry
  exact h₂