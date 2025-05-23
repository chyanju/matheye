theorem h₂₂ (h₁ : ∀ k ∈ Finset.Icc 1 20, logb (5 ^ k) (3 ^ k ^ 2) = (↑k : ℝ) * logb 5 3) (h₂₁ : ∑ k ∈ Finset.Icc 1 20, logb (5 ^ k) (3 ^ k ^ 2) = ∑ k ∈ Finset.Icc 1 20, (↑k : ℝ) * logb 5 3) : ∑ k ∈ Finset.Icc 1 20, (↑k : ℝ) * logb 5 3 = (∑ k ∈ Finset.Icc 1 20, (↑k : ℝ)) * logb 5 3 :=
  by
  calc
    (∑ k in Finset.Icc (1 : ℕ) 20, (k : ℝ) * Real.logb 5 3) = ∑ k in Finset.Icc (1 : ℕ) 20, (Real.logb 5 3 * (k : ℝ)) :=
      by
      apply Finset.sum_congr rfl
      intro k _
      ring
    _ = Real.logb 5 3 * ∑ k in Finset.Icc (1 : ℕ) 20, (k : ℝ) := by rw [Finset.mul_sum] <;> simp [mul_comm]
    _ = (∑ k in Finset.Icc (1 : ℕ) 20, (k : ℝ)) * Real.logb 5 3 := by ring