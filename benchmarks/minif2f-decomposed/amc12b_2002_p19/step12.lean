theorem h₅₁ (a b c : ℝ) (h₀ : 0 < a ∧ 0 < b ∧ 0 < c) (h₁ : a * (b + c) = 152) (h₂ : b * (c + a) = 162) (h₃ : c * (a + b) = 170) (h₄ : a * b + a * c + b * c = 242) : a * b + a * c = 152 := by
  have h₅₂ : a * b + a * c = a * (b + c) := by sorry
  rw [h₅₂]
  linarith