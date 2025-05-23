theorem h₇₄ (a b c d : ℝ) (h₁ : 4 ^ a = 5) (h₂ : 5 ^ b = 6) (h₃ : 6 ^ c = 7) (h₄ : 7 ^ d = 8) (h₅ : a = Real.log 5 / Real.log 4) (h₆ : b = Real.log 6 / Real.log 5) (h₇₁ : Real.log (6 ^ c) = Real.log 7) (h₇₂ : c * Real.log 6 = Real.log 7) (h₇₃ : Real.log 6 ≠ 0) : c = Real.log 7 / Real.log 6 := by
  field_simp at h₇₂ ⊢
  linarith