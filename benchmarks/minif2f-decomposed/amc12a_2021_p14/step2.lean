theorem h₁  : ∀ k ∈ Finset.Icc 1 20, logb (5 ^ k) (3 ^ k ^ 2) = (↑k : ℝ) * logb 5 3 :=
  by
  intro k hk
  have h₁ : 1 ≤ (k : ℕ) := by sorry
  have h₂ : (k : ℕ) ≤ 20 := by sorry
  have h₃ : k ≥ 1 := by sorry
  have h₄ : k ≤ 20 := by sorry
  have h₅ : Real.logb ((5 : ℝ) ^ k) ((3 : ℝ) ^ (k ^ 2)) = (k : ℝ) * Real.logb 5 3 := by sorry
  exact h₅