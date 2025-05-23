theorem h₄₁ (h₁ : ∀ k ∈ Finset.Icc 1 20, logb (5 ^ k) (3 ^ k ^ 2) = (↑k : ℝ) * logb 5 3) (h₂ : ∑ k ∈ Finset.Icc 1 20, logb (5 ^ k) (3 ^ k ^ 2) = 210 * logb 5 3) (h₃ : ∀ k ∈ Finset.Icc 1 100, logb (9 ^ k) (25 ^ k) = logb 3 5) : ∑ k ∈ Finset.Icc 1 100, logb (9 ^ k) (25 ^ k) = ∑ k ∈ Finset.Icc 1 100, logb 3 5 :=
  by
  apply Finset.sum_congr rfl
  intro k hk
  rw [h₃ k hk]