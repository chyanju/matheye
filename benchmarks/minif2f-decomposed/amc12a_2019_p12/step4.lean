theorem hxy_sign (x y : ℝ) (h₀ : x ≠ 1 ∧ y ≠ 1) (h₁ : Real.log x / Real.log 2 = Real.log 16 / Real.log y) (h₂ : x * y = 64) (hx_ne_zero : x ≠ 0) (hy_ne_zero : y ≠ 0) : x > 0 ∧ y > 0 ∨ x < 0 ∧ y < 0 :=
  by
  by_cases hx_pos : x > 0
  ·
    have hy_pos : y > 0 := by sorry
    exact Or.inl ⟨hx_pos, hy_pos⟩
  ·
    have hx_neg : x < 0 := by sorry
    have hy_neg : y < 0 := by sorry
    exact Or.inr ⟨hx_neg, hy_neg⟩