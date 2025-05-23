theorem h₂ (x : ℝ) (n : ℕ) (h₀ : -1 < x) (h₁ : 0 < n) (h_base : 1 + 1 * x ≤ (1 + x) ^ 1) (h_inductive : ∀ (k : ℕ), 0 < k → 1 + (↑k : ℝ) * x ≤ (1 + x) ^ k → 1 + (↑(k + 1) : ℝ) * x ≤ (1 + x) ^ (k + 1)) : ∀ (k : ℕ), 0 < k → 1 + (↑k : ℝ) * x ≤ (1 + x) ^ k :=
  by
  intro k hk_pos
  induction' hk_pos with k hk_pos IH
  · simpa using h_base
  · simpa using h_inductive k hk_pos IH