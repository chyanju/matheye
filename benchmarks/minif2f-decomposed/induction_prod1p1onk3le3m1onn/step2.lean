theorem h_main (n : ℕ) (h₀ : 0 < n) : ∀ (m : ℕ), 0 < m → ∏ k ∈ Finset.Icc 1 m, (1 + 1 / (↑k : ℝ) ^ 3) ≤ 3 - 1 / (↑m : ℝ) :=
  by
  intro m hm
  have h₁ : ∀ (n : ℕ), 0 < n → (∏ k in Finset.Icc 1 n, (1 + (1 : ℝ) / k ^ 3)) ≤ (3 : ℝ) - 1 / ↑n := by sorry
  exact h₁ m hm