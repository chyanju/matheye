theorem h₆ (n : ℕ) (h₀ : 10 ≤ n) (h₁ : ∃ x, x ^ 2 = n) (h₂ : ∃ t, t ^ 3 = n) (t : ℕ) (ht : t ^ 3 = n) (h : ¬t ≥ 3) (h₅ : t ≤ 2) : t ^ 3 ≤ 8 := by
  have h₇ : t ≤ 2 := h₅
  have h₈ : t ^ 3 ≤ 2 ^ 3 := by sorry
  linarith