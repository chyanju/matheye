theorem h₇ (i m o : ℕ) (h₀ : i ≠ m ∧ m ≠ o ∧ o ≠ i) (h₁ : i * m * o = 2001) (h_pos_i : i > 0) (h_pos_m : m > 0) (h_pos_o : o > 0) (h₂ : i ∣ 2001) (h₃ : m ∣ 2001) (h₄ : o ∣ 2001) (h₅ : i ≤ 2001) (h₆ : m ≤ 2001) : o ≤ 2001 := by
  have h₇₁ : o ∣ 2001 := h₄
  have h₇₂ : o ≤ 2001 := Nat.le_of_dvd (by norm_num) h₇₁
  exact h₇₂