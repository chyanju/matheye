theorem h₁₅ (a b : ℝ) (h₀ : 2 ^ a = 32) (h₁ : a ^ b = 125) (h₂ : a > 0) (h₃ : a = 5) (h₅ : a > 0) (h₆ : a = 5) (h₇ h₈ : 5 ^ b = 125) (h₉ : Real.log (5 ^ b) = Real.log 125) (h₁₀ : b * Real.log 5 = 3 * Real.log 5) (h₁₁ : Real.log 125 = Real.log (5 ^ 3)) (h₁₂ : Real.log (5 ^ 3) = 3 * Real.log 5) (h₁₃ : Real.log 125 = 3 * Real.log 5) (h₁₄ : b * Real.log 5 = 3 * Real.log 5) : b = 3 :=
  by
  apply
    mul_left_cancel₀
      (show (Real.log 5 : ℝ) ≠ 0 by
        have h₁₅₁ : Real.log 5 > 0 := Real.log_pos (by norm_num)
        linarith)
  linarith