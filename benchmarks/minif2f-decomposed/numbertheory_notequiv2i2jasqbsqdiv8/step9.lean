theorem h₆ (h : ∀ (a b : ℤ), (∃ i j, a = 2 * i ∧ b = 2 * j) ↔ ∃ k, a ^ 2 + b ^ 2 = 8 * k) (h₁ : (∃ i j, 4 = 2 * i ∧ 2 = 2 * j) ↔ ∃ k, 4 ^ 2 + 2 ^ 2 = 8 * k) (h₂ : ∃ i j, 4 = 2 * i ∧ 2 = 2 * j) (k : ℤ) (hk h₄ : 4 ^ 2 + 2 ^ 2 = 8 * k) (h₅ : k = 5 / 2) : k ≠ 5 / 2 := by
  norm_num at h₅ ⊢ <;> (try omega) <;>
    (try {norm_cast at h₅ ⊢ <;> omega
      })