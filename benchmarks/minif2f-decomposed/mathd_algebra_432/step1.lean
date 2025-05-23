theorem mathd_algebra_432 (x : ℝ) : (x + 3) * (2 * x - 6) = 2 * x ^ 2 - 18 :=
  by
  have h_expand : (x + 3) * (2 * x - 6) = 2 * x ^ 2 - 6 * x + 6 * x - 18 := by sorry
  have h_simplify : 2 * x ^ 2 - 6 * x + 6 * x - 18 = 2 * x ^ 2 - 18 := by sorry
  have h_final : (x + 3) * (2 * x - 6) = 2 * x ^ 2 - 18 := by sorry
  apply h_final