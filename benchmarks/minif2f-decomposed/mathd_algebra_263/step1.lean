theorem mathd_algebra_263 (y : ℝ) (h₀ : 0 ≤ 19 + 3 * y) (h₁ : √(19 + 3 * y) = 7) : y = 10 :=
  by
  have h₂ : 19 + 3 * y = 49 :=
    by
    have h₂₁ : (Real.sqrt (19 + 3 * y)) ^ 2 = 7 ^ 2 := by rw [h₁]
    have h₂₂ : (Real.sqrt (19 + 3 * y)) ^ 2 = 19 + 3 * y := by rw [Real.sq_sqrt] <;> linarith
    linarith
  have h₃ : y = 10 := by sorry
  have h₂ : 19 + 3 * y = 49 := by sorry
have mathd_algebra_263 (y : ℝ) (h₀ : 0 ≤ 19 + 3 * y) (h₁ : Real.sqrt (19 + 3 * y) = 7) : y = 10 :=
  by
  have h₂ : 19 + 3 * y = 49 :=
    by
    have h₂₁ : (Real.sqrt (19 + 3 * y)) ^ 2 = 7 ^ 2 := by rw [h₁]
    have h₂₂ : (Real.sqrt (19 + 3 * y)) ^ 2 = 19 + 3 * y := by rw [Real.sq_sqrt] <;> linarith
    linarith
  have h₃ : y = 10 := by
    have h₄ : 3 * y = 30 := by linarith
    have h₅ : y = 10 := by linarith
    exact h₅
  apply h₃