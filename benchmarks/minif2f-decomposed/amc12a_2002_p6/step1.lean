theorem amc12a_2002_p6 (n : ℕ) (h₀ : 0 < n) : ∃ m > n, ∃ p, m * p ≤ m + p :=
  by
  have h₁ : ∃ (m : ℕ), m > n ∧ ∃ (p : ℕ), m * p ≤ m + p := by sorry
  exact h₁