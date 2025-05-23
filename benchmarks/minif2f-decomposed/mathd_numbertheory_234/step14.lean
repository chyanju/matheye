theorem h₅₅ (a b : ℕ) (h₀ : 1 ≤ a ∧ a ≤ 9 ∧ b ≤ 9) (h₁ : (10 * a + b) ^ 3 = 912673) (h₂ : 10 * a + b ≤ 97) (h₃ : 10 * a + b ≥ 97) (h₄ h₅₁ : 10 * a + b = 97) (h₅₂ : a ≤ 9) (h₅₃ : b ≤ 9) (h₅₄ : 1 ≤ a) : a ≥ 9 := by
  by_contra h
  have h₅₅₁ : a ≤ 8 := by sorry
  have h₅₅₂ : b = 97 - 10 * a := by sorry
  have h₅₅₃ : a ≤ 8 := by sorry
  interval_cases a <;> norm_num at h₅₁ ⊢ <;> (try omega) <;> (try omega)