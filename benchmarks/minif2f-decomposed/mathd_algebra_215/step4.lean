theorem h₃ (S : Finset ℝ) (h₀ : ∀ (x : ℝ), x ∈ S ↔ (x + 3) ^ 2 = 121) (x : ℝ) (h h₂ : (x + 3) ^ 2 = 121) : x + 3 = 11 ∨ x + 3 = -11 := by
  apply or_iff_not_imp_left.mpr
  intro h₄
  apply eq_of_sub_eq_zero
  apply mul_left_cancel₀ (sub_ne_zero.mpr h₄)
  nlinarith