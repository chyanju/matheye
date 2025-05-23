theorem h_base (x : ℝ) (n : ℕ) (h₀ : -1 < x) (h₁ : 0 < n) : 1 + 1 * x ≤ (1 + x) ^ 1 := by
  norm_num <;> (try ring_nf at * <;> linarith) <;> (try nlinarith) <;> (try linarith) <;> (try nlinarith) <;>
      (try linarith) <;>
    (try nlinarith)