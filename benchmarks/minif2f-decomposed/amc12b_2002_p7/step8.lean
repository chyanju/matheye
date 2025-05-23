theorem h₆₃ (a b c : ℕ) (h₀ : 0 < a ∧ 0 < b ∧ 0 < c) (h₁ : b = a + 1) (h₂ : c = b + 1) (h₃ : a * b * c = 8 * (a + b + c)) (h₄ : c = a + 2) (h₅ : a * (a + 1) * (a + 2) = 24 * (a + 1)) (h : ¬a ≤ 6) (h₆₂ : a ≥ 7) : a * (a + 1) * (a + 2) > 24 * (a + 1) :=
  by
  have h₆₄ : a ≥ 7 := h₆₂
  have h₆₅ : a * (a + 1) * (a + 2) > 24 * (a + 1) := by sorry
  exact h₆₅