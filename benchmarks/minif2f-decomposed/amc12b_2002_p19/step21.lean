theorem h₇ (a b c : ℝ) (h₀ : 0 < a ∧ 0 < b ∧ 0 < c) (h₁ : a * (b + c) = 152) (h₂ : b * (c + a) = 162) (h₃ : c * (a + b) = 170) (h₄ : a * b + a * c + b * c = 242) (h₅ : a * b = 72) (h₆ : a * c = 80) : b * c = 90 :=
  by
  have h₇₁ : a * b + a * c = 152 := by sorry
  have h₇₃ : b * c + b * a = 162 := by sorry
  have h₇₅ : c * a + c * b = 170 := by sorry
  nlinarith