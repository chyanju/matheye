theorem h₆₂ (a b c d : ℝ) (h₁ : 4 ^ a = 5) (h₂ : 5 ^ b = 6) (h₃ : 6 ^ c = 7) (h₄ : 7 ^ d = 8) (h₅ : a = Real.log 5 / Real.log 4) (h₆₁ : Real.log (5 ^ b) = Real.log 6) : b * Real.log 5 = Real.log 6 :=
  by
  rw [Real.log_rpow (by norm_num : (5 : ℝ) > 0)] at h₆₁
  exact h₆₁