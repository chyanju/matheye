theorem h₅₃ (p q : ℕ) (h₀ : Nat.Prime p ∧ Nat.Prime q) (h₁ : 4 ≤ p ∧ p ≤ 18) (h₂ : 4 ≤ q ∧ q ≤ 18) (h₃ : p = 5 ∨ p = 7 ∨ p = 11 ∨ p = 13 ∨ p = 17) (h₄ : q = 5 ∨ q = 7 ∨ q = 11 ∨ q = 13 ∨ q = 17) (h₅₁ : p ≥ 5) (h₅₂ : q ≥ 5) : p * q ≥ p + q := by
  nlinarith [mul_le_mul_of_nonneg_right h₅₁ (by linarith : (0 : ℕ) ≤ q),
    mul_le_mul_of_nonneg_left h₅₂ (by linarith : (0 : ℕ) ≤ p)]