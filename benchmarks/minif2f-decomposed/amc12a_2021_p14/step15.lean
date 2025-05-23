theorem h₂₁ (h₁ : ∀ k ∈ Finset.Icc 1 20, logb (5 ^ k) (3 ^ k ^ 2) = (↑k : ℝ) * logb 5 3) : ∑ k ∈ Finset.Icc 1 20, logb (5 ^ k) (3 ^ k ^ 2) = ∑ k ∈ Finset.Icc 1 20, (↑k : ℝ) * logb 5 3 :=
  by
  apply Finset.sum_congr rfl
  intro k hk
  rw [h₁ k hk]