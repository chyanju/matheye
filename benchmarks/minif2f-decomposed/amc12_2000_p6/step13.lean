theorem h₅₅ (p q : ℕ) (h₀ : Nat.Prime p ∧ Nat.Prime q) (h₁ : 4 ≤ p ∧ p ≤ 18) (h₂ : 4 ≤ q ∧ q ≤ 18) (h₃ : p = 5 ∨ p = 7 ∨ p = 11 ∨ p = 13 ∨ p = 17) (h₄ : q = 5 ∨ q = 7 ∨ q = 11 ∨ q = 13 ∨ q = 17) (h₅₂ : 2 ≤ p) (h₅₃ : 4 ≤ p) (h₅₄ : p ≥ 4) : p ≠ 4 := by
  intro h
  rw [h] at h₀
  norm_num [Nat.Prime] at h₀