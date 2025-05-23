theorem h₁ (x y : ℝ) (h₀ : x ^ 2 + 8 * x + y ^ 2 - 6 * y = 0) : (x + 4) ^ 2 + (y - 3) ^ 2 = x ^ 2 + 8 * x + y ^ 2 - 6 * y + 25 := by
  ring_nf at h₀ ⊢ <;> (try ring_nf) <;> (try linarith) <;> (try nlinarith) <;>
        (try nlinarith [sq_nonneg (x + 4), sq_nonneg (y - 3), sq_nonneg (x - 4), sq_nonneg (y + 3)]) <;>
      (try nlinarith [sq_nonneg (x + 4 + (y - 3)), sq_nonneg (x + 4 - (y - 3))]) <;>
    nlinarith