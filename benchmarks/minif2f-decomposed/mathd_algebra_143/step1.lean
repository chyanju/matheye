theorem mathd_algebra_143 (f g : ℝ → ℝ) (h₀ : ∀ (x : ℝ), f x = x + 1) (h₁ : ∀ (x : ℝ), g x = x ^ 2 + 3) : f (g 2) = 8 :=
  by
  have h₂ : g 2 = 7 := by sorry
  have h₃ : f (g 2) = 8 := by sorry
  exact h₃