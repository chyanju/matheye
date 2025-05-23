theorem h₁ (n : ℕ) (h₀ : 3 ≤ n) (h_base : 3! < 3 ^ (3 - 1)) (h_inductive : ∀ (k : ℕ), 3 ≤ k → k ! < k ^ (k - 1) → (k + 1)! < (k + 1) ^ k) : ∀ (k : ℕ), 3 ≤ k → k ! < k ^ (k - 1) := by
  intro k hk
  induction' hk with k hk IH
  · norm_num [Nat.factorial]
  · simpa using h_inductive k hk IH