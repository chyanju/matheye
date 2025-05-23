theorem h₁ (f : ℝ → ℝ) (h₀ : ∀ (x : ℝ), x ≠ -2 → f x = 1 / (x + 2)) : f 1 = 1 / 3 := by
  have h₁₁ : (1 : ℝ) ≠ -2 := by sorry
  have h₁₂ : f 1 = 1 / (1 + 2 : ℝ) := h₀ 1 h₁₁
  rw [h₁₂] <;> norm_num <;> field_simp <;> ring <;> norm_num