theorem h₃ (n : ℕ) (h₀ : 2 ≤ n) (h₁ : ∃ x, x ^ 3 = n) (t : ℕ) (ht : t ^ 4 = n) : t ≥ 2 := by
  by_contra h
  have h₄ : t ≤ 1 := by sorry
  have h₅ : t = 0 ∨ t = 1 := by sorry
  cases h₅ with
  | inl h₅ =>
    have h₆ : t = 0 := h₅
    rw [h₆] at ht
    norm_num at ht <;> linarith
  | inr h₅ =>
    have h₆ : t = 1 := h₅
    rw [h₆] at ht
    norm_num at ht <;> linarith