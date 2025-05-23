theorem h₆₅ (a b c : ℝ) (h₀ : a ≤ b ∧ b ≤ c) (h₁ : a + b + c = 2) (h₂ : a * b + b * c + c * a = 1) (h₃ : 0 ≤ a) (h₄ : 1 ≤ c) (h₅ : c ≤ 4 / 3) (h₆₁ : a + b = 2 - c) (h₆₂ : a * b = (c - 1) ^ 2) (h₆₃ : c ≥ 1) (h₆₄ : c ≤ 4 / 3) : a ≤ 1 / 3 := by
  nlinarith [sq_nonneg (a - b), sq_nonneg (b - c), sq_nonneg (c - a),
    mul_nonneg (sub_nonneg.mpr h₃) (sub_nonneg.mpr h₀.1), mul_nonneg (sub_nonneg.mpr h₀.1) (sub_nonneg.mpr h₀.2),
    mul_nonneg (sub_nonneg.mpr h₃) (sub_nonneg.mpr h₀.2)]