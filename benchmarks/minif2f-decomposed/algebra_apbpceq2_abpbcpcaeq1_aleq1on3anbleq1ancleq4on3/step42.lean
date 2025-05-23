theorem h₈ (a b c : ℝ) (h₀ : a ≤ b ∧ b ≤ c) (h₁ : a + b + c = 2) (h₂ : a * b + b * c + c * a = 1) (h₃ : 0 ≤ a) (h₄ : 1 ≤ c) (h₅ : c ≤ 4 / 3) (h₆ : a ≤ 1 / 3) (h₇ : 1 / 3 ≤ b) : b ≤ 1 := by
  have h₈₁ : a + b + c = 2 := h₁
  have h₈₂ : a * b + b * c + c * a = 1 := h₂
  have h₈₃ : a ≤ b := h₀.1
  have h₈₄ : b ≤ c := h₀.2
  have h₈₅ : 0 ≤ a := h₃
  have h₈₆ : 1 ≤ c := h₄
  have h₈₇ : c ≤ 4 / 3 := h₅
  have h₈₈ : a ≤ 1 / 3 := h₆
  have h₈₉ : 1 / 3 ≤ b := h₇
  nlinarith [sq_nonneg (a - b), sq_nonneg (b - c), sq_nonneg (c - a)]