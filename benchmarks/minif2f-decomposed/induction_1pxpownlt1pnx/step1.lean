theorem induction_1pxpownlt1pnx (x : ℝ) (n : ℕ) (h₀ : -1 < x) (h₁ : 0 < n) : 1 + (↑n : ℝ) * x ≤ (1 + x) ^ n :=
  by
  have h_base : 1 + (1 : ℝ) * x ≤ (1 + x) ^ 1 := by sorry
  have h_inductive : ∀ (k : ℕ), 0 < k → 1 + (k : ℝ) * x ≤ (1 + x) ^ k → 1 + ((k + 1 : ℕ) : ℝ) * x ≤ (1 + x) ^ (k + 1) := by sorry
  have h_main : 1 + (n : ℝ) * x ≤ (1 + x) ^ n := by sorry
  simpa using h_main