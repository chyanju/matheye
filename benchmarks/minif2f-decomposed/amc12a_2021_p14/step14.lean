theorem h₂ (h₁ : ∀ k ∈ Finset.Icc 1 20, logb (5 ^ k) (3 ^ k ^ 2) = (↑k : ℝ) * logb 5 3) : ∑ k ∈ Finset.Icc 1 20, logb (5 ^ k) (3 ^ k ^ 2) = 210 * logb 5 3 :=
  by
  have h₂₁ :
    (∑ k in Finset.Icc (1 : ℕ) 20, Real.logb ((5 : ℝ) ^ k) ((3 : ℝ) ^ (k ^ 2))) =
      ∑ k in Finset.Icc (1 : ℕ) 20, ((k : ℝ) * Real.logb 5 3) := by sorry
  rw [h₂₁]
  have h₂₂ :
    (∑ k in Finset.Icc (1 : ℕ) 20, (k : ℝ) * Real.logb 5 3) = (∑ k in Finset.Icc (1 : ℕ) 20, (k : ℝ)) * Real.logb 5 3 := by sorry
  rw [h₂₂]
  have h₂₃ : (∑ k in Finset.Icc (1 : ℕ) 20, (k : ℝ)) = 210 := by sorry
  rw [h₂₃] <;> ring <;> simp [Real.logb] <;> field_simp <;> ring