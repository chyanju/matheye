theorem h₁₀₄ (i m o : ℕ) (h₀ : i ≠ m ∧ m ≠ o ∧ o ≠ i) (h₁ : i * m * o = 2001) (h_pos_i : i > 0) (h_pos_m : m > 0) (h_pos_o : o > 0) (h₂ : i ∣ 2001) (h₃ : m ∣ 2001) (h₄ : o ∣ 2001) (h₅ : i ≤ 2001) (h₆ : m ≤ 2001) (h₇ : o ≤ 2001) (h₈ : i = 1 ∨ i = 3 ∨ i = 23 ∨ i = 29 ∨ i = 69 ∨ i = 87 ∨ i = 667 ∨ i = 2001) (h₉ : m = 1 ∨ m = 3 ∨ m = 23 ∨ m = 29 ∨ m = 69 ∨ m = 87 ∨ m = 667 ∨ m = 2001) (h₁₀₁ : o ∣ 2001) (h₁₀₂ : o ≤ 2001) (h₁₀₃ : o > 0) : o = 1 ∨ o = 3 ∨ o = 23 ∨ o = 29 ∨ o = 69 ∨ o = 87 ∨ o = 667 ∨ o = 2001 :=
  by
  have h₁₀₅ : o ∣ 2001 := h₁₀₁
  have h₁₀₆ : o ≤ 2001 := h₁₀₂
  interval_cases o <;> norm_num at h₁₀₅ ⊢ <;> omega