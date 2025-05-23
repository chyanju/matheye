theorem mathd_algebra_156 (x y : ℝ) (f g : ℝ → ℝ) (h₀ : ∀ (t : ℝ), f t = t ^ 4) (h₁ : ∀ (t : ℝ), g t = 5 * t ^ 2 - 6) (h₂ : f x = g x) (h₃ : f y = g y) (h₄ : x ^ 2 < y ^ 2) : y ^ 2 - x ^ 2 = 1 :=
  by
  have h₅ : x ^ 4 - 5 * x ^ 2 + 6 = 0 := by sorry
  have h₆ : y ^ 4 - 5 * y ^ 2 + 6 = 0 := by sorry
  have h₇ : x ^ 2 = 2 ∨ x ^ 2 = 3 := by sorry
  have h₈ : y ^ 2 = 2 ∨ y ^ 2 = 3 := by sorry
  have h₉ : x ^ 2 = 2 := by sorry
  have h₁₀ : y ^ 2 = 3 := by sorry
  have h₁₁ : y ^ 2 - x ^ 2 = 1 := by sorry
  apply h₁₁