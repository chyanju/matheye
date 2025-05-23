theorem h_pos_i (i m o : ℕ) (h₀ : i ≠ m ∧ m ≠ o ∧ o ≠ i) (h₁ : i * m * o = 2001) : i > 0 := by
  by_contra h
  have h₂ : i = 0 := by sorry
  rw [h₂] at h₁
  norm_num at h₁ <;> omega