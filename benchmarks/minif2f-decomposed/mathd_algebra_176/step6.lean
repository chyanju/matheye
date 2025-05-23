theorem h3 (x : ℝ) (h1 : (x + 1) ^ 2 * x = (x ^ 2 + 2 * x + 1) * x) (h2 : (x ^ 2 + 2 * x + 1) * x = x ^ 3 + 2 * x ^ 2 + x) : (x + 1) ^ 2 * x = x ^ 3 + 2 * x ^ 2 + x := by
  rw [h1]
  rw [h2] <;> ring_nf <;> nlinarith