theorem h₃ (h : ∀ (a b : ℤ), (∃ i j, a = 2 * i ∧ b = 2 * j) ↔ ∃ k, a ^ 2 + b ^ 2 = 8 * k) (h₁ : (∃ i j, 4 = 2 * i ∧ 2 = 2 * j) ↔ ∃ k, 4 ^ 2 + 2 ^ 2 = 8 * k) (h₂ : ∃ i j, 4 = 2 * i ∧ 2 = 2 * j) : ∃ k, 4 ^ 2 + 2 ^ 2 = 8 * k :=
  by
  have h₄ : (∃ (k : ℤ), (4 : ℤ) ^ 2 + (2 : ℤ) ^ 2 = 8 * k) := by sorry
  exact h₄