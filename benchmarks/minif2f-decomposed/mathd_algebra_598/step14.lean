theorem h₇₂ (a b c d : ℝ) (h₁ : 4 ^ a = 5) (h₂ : 5 ^ b = 6) (h₃ : 6 ^ c = 7) (h₄ : 7 ^ d = 8) (h₅ : a = Real.log 5 / Real.log 4) (h₆ : b = Real.log 6 / Real.log 5) (h₇₁ : Real.log (6 ^ c) = Real.log 7) : c * Real.log 6 = Real.log 7 :=
  by
  rw [Real.log_rpow (by norm_num : (6 : ℝ) > 0)] at h₇₁
  exact h₇₁