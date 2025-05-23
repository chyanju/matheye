theorem mathd_numbertheory_296 (n : ℕ) (h₀ : 2 ≤ n) (h₁ : ∃ x, x ^ 3 = n) (h₂ : ∃ t, t ^ 4 = n) : 4096 ≤ n :=
  by
  have h_main : n ≥ 4096 := by sorry
  linarith