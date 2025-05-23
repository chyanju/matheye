theorem h₁ (f : ℝ → ℝ) (h₀ : ∀ (x : ℝ), f x = 5 * x + 4) : f 1 = 5 * 1 + 4 :=
  by
  have h₁₀ : f 1 = 5 * (1 : ℝ) + 4 := by sorry
  exact h₁₀