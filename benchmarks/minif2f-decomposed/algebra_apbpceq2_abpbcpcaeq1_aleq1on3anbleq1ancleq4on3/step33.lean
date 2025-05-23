theorem h₅₈ (a b c : ℝ) (h₀ : a ≤ b ∧ b ≤ c) (h₁ : a + b + c = 2) (h₂ : a * b + b * c + c * a = 1) (h₃ : 0 ≤ a) (h₄ : 1 ≤ c) (h₅₁ : a + b + c = 2) (h₅₂ : a * b + b * c + c * a = 1) (h₅₃ : a ≤ b) (h₅₄ : b ≤ c) (h₅₅ : 0 ≤ a) (h₅₆ : 1 ≤ c) (h₅₇ : (b - c) ^ 2 ≥ 0) : c ≤ 4 / 3 := by
  nlinarith [sq_nonneg (a - b), sq_nonneg (b - c), sq_nonneg (c - a),
    mul_nonneg (sub_nonneg.mpr h₅₅) (sub_nonneg.mpr h₅₃), mul_nonneg (sub_nonneg.mpr h₅₃) (sub_nonneg.mpr h₅₄),
    mul_nonneg (sub_nonneg.mpr h₅₅) (sub_nonneg.mpr h₅₄)]