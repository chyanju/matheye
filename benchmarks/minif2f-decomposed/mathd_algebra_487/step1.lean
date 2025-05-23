theorem mathd_algebra_487 (a b c d : ℝ) (h₀ : b = a ^ 2) (h₁ : a + b = 1) (h₂ : d = c ^ 2) (h₃ : c + d = 1) (h₄ : a ≠ c) : √((a - c) ^ 2 + (b - d) ^ 2) = √10 :=
  by
  have h₅ : a ^ 2 + a - 1 = 0 := by sorry
  have h₆ : c ^ 2 + c - 1 = 0 := by sorry
  have h₇ : a + c = -1 := by sorry
  have h₈ : a * c = -1 := by sorry
  have h₉ : (a - c) ^ 2 = 5 := by sorry
  have h₁₀ : (b - d) ^ 2 = 5 := by sorry
  have h₁₁ : (a - c) ^ 2 + (b - d) ^ 2 = 10 := by sorry
  have h₁₂ : Real.sqrt ((a - c) ^ 2 + (b - d) ^ 2) = Real.sqrt 10 := by sorry
  rw [h₁₂]