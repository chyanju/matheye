theorem mathd_algebra_33 (x y z : ℝ) (h₀ : x ≠ 0) (h₁ : 2 * x = 5 * y) (h₂ : 7 * y = 10 * z) : z / x = 7 / 25 :=
  by
  have h₃ : 14 * x = 35 * y := by sorry
  have h₄ : 35 * y = 50 * z := by sorry
  have h₅ : 14 * x = 50 * z := by sorry
  have h₆ : z = (7 : ℝ) / 25 * x := by sorry
  have h₇ : z / x = 7 / 25 := by sorry
  apply h₇