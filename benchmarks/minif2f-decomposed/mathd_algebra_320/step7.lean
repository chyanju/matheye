theorem h₉ (x : ℝ) (a b c : ℕ) (h₀ : 0 < a ∧ 0 < b ∧ 0 < c ∧ 0 ≤ x) (h₁ : 2 * x ^ 2 = 4 * x + 9) (h₂ : x = ((↑a : ℝ) + √(↑b : ℝ)) / (↑c : ℝ)) (h₃ : c = 2) (h₄ : x = ((↑a : ℝ) + √(↑b : ℝ)) / 2) (h₅ : 2 * x ^ 2 = 4 * x + 9) (h₆ : (↑a : ℝ) > 0) (h₇ : (↑b : ℝ) > 0) (h₈ : 2 > 0) : (↑a : ℝ) ^ 2 + (↑b : ℝ) + 2 * (↑a : ℝ) * √(↑b : ℝ) = 4 * (↑a : ℝ) + 4 * √(↑b : ℝ) + 18 :=
  by
  have h₉₁ : x = (a + Real.sqrt b) / 2 := h₄
  have h₉₂ : 2 * x ^ 2 = 4 * x + 9 := h₅
  rw [h₉₁] at h₉₂
  ring_nf at h₉₂ ⊢
  nlinarith [Real.sqrt_nonneg b, Real.sq_sqrt (show 0 ≤ (b : ℝ) by linarith), mul_pos h₆ h₇, mul_pos (mul_pos h₆ h₈) h₇]