theorem h₁₁₁ (x : ℝ) (a b c : ℕ) (h₀ : 0 < a ∧ 0 < b ∧ 0 < c ∧ 0 ≤ x) (h₁ : 2 * x ^ 2 = 4 * x + 9) (h₂ : x = ((↑a : ℝ) + √(↑b : ℝ)) / (↑c : ℝ)) (h₃ : c = 2) (h₄ : x = ((↑a : ℝ) + √(↑b : ℝ)) / 2) (h₅ : 2 * x ^ 2 = 4 * x + 9) (h₆ : (↑a : ℝ) > 0) (h₇ : (↑b : ℝ) > 0) (h₈ : 2 > 0) (h₉ : (↑a : ℝ) ^ 2 + (↑b : ℝ) + 2 * (↑a : ℝ) * √(↑b : ℝ) = 4 * (↑a : ℝ) + 4 * √(↑b : ℝ) + 18) (h₁₀ : (2 * (↑a : ℝ) - 4) ^ 2 * (↑b : ℝ) = (4 * (↑a : ℝ) + 18 - (↑a : ℝ) ^ 2 - (↑b : ℝ)) ^ 2) : a = 2 := by
  by_contra h
  have h₁₂ : a ≠ 2 := h
  have h₁₃ : a ≥ 1 := by sorry
  have h₁₄ : a ≤ 7 := by sorry
  interval_cases a <;> norm_num at h₁₀ ⊢ <;> (try norm_num at h₁₀ ⊢) <;>
      (try {
          have h₁₅₁₃ : (b : ℕ) > 0 := by linarith [h₀.2.1]
          have h₁₅₁₄ : (b : ℝ) > 0 := by exact_mod_cast h₀.2.1
          have h₁₅₁₅ : (b : ℕ) ≤ 100 := by
            by_contra h₁₅₁₆
            have h₁₅₁₇ : (b : ℕ) > 100 := by linarith
            have h₁₅₁₈ : (b : ℝ) > 100 := by exact_mod_cast h₁₅₁₇
            nlinarith [Real.sqrt_nonneg (b : ℝ), Real.sq_sqrt (show 0 ≤ (b : ℝ) by linarith)]
          interval_cases b <;> norm_num at h₁₀ ⊢ <;>
                (try nlinarith [Real.sqrt_nonneg (b : ℝ), Real.sq_sqrt (show 0 ≤ (b : ℝ) by linarith)]) <;>
              (try omega) <;>
            (try linarith)
        }) <;>
    (try omega)