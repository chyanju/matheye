theorem h₃ (p q : ℕ) (h₀ : Nat.Prime p ∧ Nat.Prime q) (h₁ : 4 ≤ p ∧ p ≤ 18) (h₂ : 4 ≤ q ∧ q ≤ 18) : p = 5 ∨ p = 7 ∨ p = 11 ∨ p = 13 ∨ p = 17 :=
  by
  have h₃₁ : p = 5 ∨ p = 7 ∨ p = 11 ∨ p = 13 ∨ p = 17 := by sorry
  exact h₃₁ <;> aesop