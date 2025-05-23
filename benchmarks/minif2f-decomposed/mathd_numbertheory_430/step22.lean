theorem h₁₂₇ (a b c : ℕ) (h₀ : 1 ≤ a ∧ a ≤ 9) (h₁ : 1 ≤ b ∧ b ≤ 9) (h₂ : 1 ≤ c ∧ c ≤ 9) (h₃ : a ≠ b) (h₄ : a ≠ c) (h₅ : b ≠ c) (h₆ : a + b = c) (h₇ : 10 * a + a - b = 2 * c) (h₈ : c * b = 10 * a + a + a) (h₉ : b = 3 * a) (h₁₀ : a ≤ 3) (h₁₁ : c = 4 * a) (h₁₂₁ : 4 * a * (3 * a) = 12 * a) (h₁₂₄ : c = 4 * a) (h₁₂₅ : b = 3 * a) (h₁₂₆ : 4 * a * (3 * a) = 12 * a) : a = 1 := by
  have h₁₂₈ : a ≥ 1 := h₀.1
  have h₁₂₉ : a ≤ 3 := h₁₀
  interval_cases a <;> norm_num at h₁₂₆ ⊢ <;> (try omega) <;> (try nlinarith)