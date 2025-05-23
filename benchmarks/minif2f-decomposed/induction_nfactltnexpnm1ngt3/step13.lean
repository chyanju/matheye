theorem h_main (n : ℕ) (h₀ : 3 ≤ n) (h_base : 3! < 3 ^ (3 - 1)) (h_inductive : ∀ (k : ℕ), 3 ≤ k → k ! < k ^ (k - 1) → (k + 1)! < (k + 1) ^ k) : n ! < n ^ (n - 1) :=
  by
  have h₁ : ∀ (k : ℕ), 3 ≤ k → k ! < k ^ (k - 1) := by sorry
  have h₂ : n ! < n ^ (n - 1) := h₁ n h₀
  exact h₂