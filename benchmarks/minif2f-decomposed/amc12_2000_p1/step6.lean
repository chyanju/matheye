theorem h_pos_o (i m o : ℕ) (h₀ : i ≠ m ∧ m ≠ o ∧ o ≠ i) (h₁ : i * m * o = 2001) (h_pos_i : i > 0) (h_pos_m : m > 0) : o > 0 := by
  by_contra h
  have h₂ : o = 0 := by sorry
  rw [h₂] at h₁
  norm_num at h₁ <;> omega