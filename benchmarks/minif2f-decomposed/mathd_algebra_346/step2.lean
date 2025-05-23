theorem h₂ (f g : ℝ → ℝ) (h₀ : ∀ (x : ℝ), f x = 2 * x - 3) (h₁ : ∀ (x : ℝ), g x = x + 1) : f 5 = 7 := by
  rw [h₀]
  norm_num