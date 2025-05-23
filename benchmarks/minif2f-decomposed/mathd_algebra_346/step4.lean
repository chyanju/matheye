theorem h₄ (f g : ℝ → ℝ) (h₀ : ∀ (x : ℝ), f x = 2 * x - 3) (h₁ : ∀ (x : ℝ), g x = x + 1) (h₂ : f 5 = 7) (h₃ : f 5 - 1 = 6) : g (f 5 - 1) = 7 := by
  rw [h₃]
  rw [h₁] <;> norm_num <;> linarith