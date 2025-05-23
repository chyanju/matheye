theorem h₄₁ (h₀ : Real.log 80 = 4 * Real.log 2 + Real.log 5) (h₁ : Real.log 40 = 3 * Real.log 2 + Real.log 5) (h₂ : Real.log 160 = 5 * Real.log 2 + Real.log 5) (h₃ : Real.log 20 = 2 * Real.log 2 + Real.log 5) : (4 * Real.log 2 + Real.log 5) * (3 * Real.log 2 + Real.log 5) =
    12 * Real.log 2 ^ 2 + 7 * Real.log 2 * Real.log 5 + Real.log 5 ^ 2 :=
  by
  ring_nf <;>
    nlinarith [Real.log_pos (by norm_num : (1 : ℝ) < 2), Real.log_pos (by norm_num : (1 : ℝ) < 5),
      Real.log_pos (by norm_num : (1 : ℝ) < 20), Real.log_pos (by norm_num : (1 : ℝ) < 40),
      Real.log_pos (by norm_num : (1 : ℝ) < 80), Real.log_pos (by norm_num : (1 : ℝ) < 160)]