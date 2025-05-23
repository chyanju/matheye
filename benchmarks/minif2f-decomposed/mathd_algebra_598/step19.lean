theorem h₈₂ (a b c d : ℝ) (h₁ : 4 ^ a = 5) (h₂ : 5 ^ b = 6) (h₃ : 6 ^ c = 7) (h₄ : 7 ^ d = 8) (h₅ : a = Real.log 5 / Real.log 4) (h₆ : b = Real.log 6 / Real.log 5) (h₇ : c = Real.log 7 / Real.log 6) (h₈₁ : Real.log (7 ^ d) = Real.log 8) : d * Real.log 7 = Real.log 8 :=
  by
  rw [Real.log_rpow (by norm_num : (7 : ℝ) > 0)] at h₈₁
  exact h₈₁