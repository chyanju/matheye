theorem mathd_algebra_176 (x : ℝ) : (x + 1) ^ 2 * x = x ^ 3 + 2 * x ^ 2 + x :=
  by
  have h1 : (x + 1) ^ 2 * x = (x ^ 2 + 2 * x + 1) * x := by sorry
  have h2 : (x ^ 2 + 2 * x + 1) * x = x ^ 3 + 2 * x ^ 2 + x := by sorry
  have h3 : (x + 1) ^ 2 * x = x ^ 3 + 2 * x ^ 2 + x := by sorry
  exact h3