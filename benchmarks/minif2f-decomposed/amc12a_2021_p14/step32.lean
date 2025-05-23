theorem h₄ (h₁ : ∀ k ∈ Finset.Icc 1 20, logb (5 ^ k) (3 ^ k ^ 2) = (↑k : ℝ) * logb 5 3) (h₂ : ∑ k ∈ Finset.Icc 1 20, logb (5 ^ k) (3 ^ k ^ 2) = 210 * logb 5 3) (h₃ : ∀ k ∈ Finset.Icc 1 100, logb (9 ^ k) (25 ^ k) = logb 3 5) : ∑ k ∈ Finset.Icc 1 100, logb (9 ^ k) (25 ^ k) = 100 * logb 3 5 :=
  by
  have h₄₁ :
    (∑ k in Finset.Icc (1 : ℕ) 100, Real.logb ((9 : ℝ) ^ k) ((25 : ℝ) ^ k)) =
      ∑ k in Finset.Icc (1 : ℕ) 100, (Real.logb 3 5 : ℝ) := by sorry
  rw [h₄₁]
  have h₄₂ : (∑ k in Finset.Icc (1 : ℕ) 100, (Real.logb 3 5 : ℝ)) = 100 * Real.logb 3 5 := by sorry
  rw [h₄₂] <;> simp [Real.logb] <;> field_simp <;> ring