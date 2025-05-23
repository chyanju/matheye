theorem h₃ (a b : ℝ) (f : ℝ → ℝ) (h₀ : ∀ (x : ℝ), f x = a * x ^ 4 - b * x ^ 2 + x + 5) (h₂ : f (-3) = 2) : 81 * a - 9 * b = 0 :=
  by
  have h₃₁ : f (-3) = a * (-3 : ℝ) ^ 4 - b * (-3 : ℝ) ^ 2 + (-3 : ℝ) + 5 := by sorry
  rw [h₃₁] at h₂
  ring_nf at h₂ ⊢
  linarith