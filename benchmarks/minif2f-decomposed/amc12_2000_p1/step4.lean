theorem h_pos_m (i m o : ℕ) (h₀ : i ≠ m ∧ m ≠ o ∧ o ≠ i) (h₁ : i * m * o = 2001) (h_pos_i : i > 0) : m > 0 := by
  by_contra h
  have h₂ : m = 0 := by sorry
  rw [h₂] at h₁
  norm_num at h₁ <;> omega