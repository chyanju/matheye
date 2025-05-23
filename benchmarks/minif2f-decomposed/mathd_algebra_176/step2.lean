theorem h1 (x : ℝ) : (x + 1) ^ 2 * x = (x ^ 2 + 2 * x + 1) * x :=
  by
  have h1₁ : (x + 1) ^ 2 = x ^ 2 + 2 * x + 1 := by sorry
  rw [h1₁] <;> ring <;> linarith