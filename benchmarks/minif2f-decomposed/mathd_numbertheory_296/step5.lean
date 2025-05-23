theorem h₅ (n : ℕ) (h₀ : 2 ≤ n) (h₁ : ∃ x, x ^ 3 = n) (t : ℕ) (ht : t ^ 4 = n) (h : ¬t ≥ 2) (h₄ : t ≤ 1) : t = 0 ∨ t = 1 := by
  have h₅₁ : t ≤ 1 := h₄
  have h₅₂ : t ≥ 0 := by sorry
  interval_cases t <;> simp_all (config := { decide := true })