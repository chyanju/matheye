theorem h₂₂₂ (a b : ℝ) (h₀ : 2 ^ a = 32) (h₁ : a ^ b = 125) (h : ¬a > 0) (h₂₁ h₂₂₁ : a ≤ 0) : 2 ^ a ≤ 2 ^ 0 :=
  by
  apply Real.rpow_le_rpow_of_exponent_le
  · norm_num
  · linarith