theorem h₄₇ (m n : ℕ) (h₀ : 1 < m) (h₁ : 1 < n) (h₂ : m * n = 2005) (h₃ : m ≤ 1002) (h₄₁ : m ≥ 2) (h₄₂ : m * n = 2005) (h₄₄ : ¬n ≤ 1002) (h₄₅ : n ≥ 1003) (h₄₆ : m * n ≥ m * 1003) : m * 1003 > 2005 := by
  have h₄₈ : m ≥ 2 := by sorry
  nlinarith