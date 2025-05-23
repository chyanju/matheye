theorem h_final (x : ℝ) (h_expand : (x + 3) * (2 * x - 6) = 2 * x ^ 2 - 6 * x + 6 * x - 18) (h_simplify : 2 * x ^ 2 - 6 * x + 6 * x - 18 = 2 * x ^ 2 - 18) : (x + 3) * (2 * x - 6) = 2 * x ^ 2 - 18 :=
  by
  rw [h_expand]
  rw [h_simplify] <;> ring_nf <;> linarith