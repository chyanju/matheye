theorem h₆ (p q : ℕ) (h₀ : Nat.Prime p ∧ Nat.Prime q) (h₁ : 4 ≤ p ∧ p ≤ 18) (h₂ : 4 ≤ q ∧ q ≤ 18) (h₃ : p = 5 ∨ p = 7 ∨ p = 11 ∨ p = 13 ∨ p = 17) (h₄ : q = 5 ∨ q = 7 ∨ q = 11 ∨ q = 13 ∨ q = 17) (h₅ : p * q ≥ p + q) : p * q - (p + q) ≠ 194 :=
  by
  have h₆₁ : p = 5 ∨ p = 7 ∨ p = 11 ∨ p = 13 ∨ p = 17 := h₃
  have h₆₂ : q = 5 ∨ q = 7 ∨ q = 11 ∨ q = 13 ∨ q = 17 := h₄
  rcases h₆₁ with (rfl | rfl | rfl | rfl | rfl) <;> rcases h₆₂ with (rfl | rfl | rfl | rfl | rfl) <;>
            norm_num at h₅ ⊢ <;>
          (try omega) <;>
        (try ring_nf at h₅ ⊢ <;> omega) <;>
      (try omega) <;>
    (try ring_nf at h₅ ⊢ <;> omega)