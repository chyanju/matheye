theorem h₆ (h₁ : ∀ k ∈ Finset.Icc 1 20, logb (5 ^ k) (3 ^ k ^ 2) = (↑k : ℝ) * logb 5 3) (h₂ : ∑ k ∈ Finset.Icc 1 20, logb (5 ^ k) (3 ^ k ^ 2) = 210 * logb 5 3) (h₃ : ∀ k ∈ Finset.Icc 1 100, logb (9 ^ k) (25 ^ k) = logb 3 5) (h₄ : ∑ k ∈ Finset.Icc 1 100, logb (9 ^ k) (25 ^ k) = 100 * logb 3 5) (h₅ : logb 5 3 * logb 3 5 = 1) : (∑ k ∈ Finset.Icc 1 20, logb (5 ^ k) (3 ^ k ^ 2)) * ∑ k ∈ Finset.Icc 1 100, logb (9 ^ k) (25 ^ k) = 21000 :=
  by
  rw [show (∑ k in Finset.Icc 1 20, Real.logb (5 ^ k) (3 ^ k ^ 2)) = 210 * Real.logb 5 3 by simpa using h₂]
  rw [show (∑ k in Finset.Icc 1 100, Real.logb (9 ^ k) (25 ^ k)) = 100 * Real.logb 3 5 by simpa using h₄]
  have h₆₁ : (210 * Real.logb 5 3 : ℝ) * (100 * Real.logb 3 5 : ℝ) = 21000 := by sorry
  rw [h₆₁] <;> norm_num