theorem h₅₂ (a b c d : ℝ) (h₁ : 4 ^ a = 5) (h₂ : 5 ^ b = 6) (h₃ : 6 ^ c = 7) (h₄ : 7 ^ d = 8) (h₅₁ : Real.log (4 ^ a) = Real.log 5) : a * Real.log 4 = Real.log 5 :=
  by
  rw [Real.log_rpow (by norm_num : (4 : ℝ) > 0)] at h₅₁
  exact h₅₁