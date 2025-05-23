theorem h₅ (p q : ℕ) (h₀ : Nat.Prime p ∧ Nat.Prime q) (h₁ : 4 ≤ p ∧ p ≤ 18) (h₂ : 4 ≤ q ∧ q ≤ 18) (h₃ : p = 5 ∨ p = 7 ∨ p = 11 ∨ p = 13 ∨ p = 17) (h₄ : q = 5 ∨ q = 7 ∨ q = 11 ∨ q = 13 ∨ q = 17) : p * q ≥ p + q :=
  by
  have h₅₁ : p ≥ 5 := by sorry
  have h₅₂ : q ≥ 5 := by sorry
  have h₅₃ : p * q ≥ p + q := by sorry
  exact h₅₃