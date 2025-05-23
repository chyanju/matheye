theorem h₈ (a b : ℝ) (h₀ : 2 ^ a = 32) (h₁ : a ^ b = 125) (h₂ : a > 0) (h₄ : Real.log (2 ^ a) = Real.log 32) (h₅ : a * Real.log 2 = 5 * Real.log 2) (h₆ : Real.log 32 = 5 * Real.log 2) (h₇ : a * Real.log 2 = 5 * Real.log 2) : a = 5 :=
  by
  apply
    mul_left_cancel₀
      (show (Real.log 2 : ℝ) ≠ 0 by
        have h₉ : Real.log 2 > 0 := Real.log_pos (by norm_num)
        linarith)
  linarith