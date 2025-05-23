theorem mathd_algebra_270 (f : ℝ → ℝ) (h₀ : ∀ (x : ℝ), x ≠ -2 → f x = 1 / (x + 2)) : f (f 1) = 3 / 7 :=
  by
  have h₁ : f 1 = 1 / 3 := by sorry
  have h₂ : f (f 1) = f (1 / 3) := by sorry
  have h₃ : f (1 / 3) = 3 / 7 := by sorry
  have h₄ : f (f 1) = 3 / 7 := by sorry
  exact h₄