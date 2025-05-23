theorem mathd_algebra_346 (f g : ℝ → ℝ) (h₀ : ∀ (x : ℝ), f x = 2 * x - 3) (h₁ : ∀ (x : ℝ), g x = x + 1) : g (f 5 - 1) = 7 :=
  by
  have h₂ : f 5 = 7 := by sorry
  have h₃ : f 5 - 1 = 6 := by sorry
  have h₄ : g (f 5 - 1) = 7 := by sorry
  rw [h₄]