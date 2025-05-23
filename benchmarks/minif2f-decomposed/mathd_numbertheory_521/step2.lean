theorem h₄ (m n : ℕ) (h₀ : Even m) (h₁ : Even n) (h₂ : m - n = 2) (h₃ : m * n = 288) : n ≥ 2 := by
  by_contra h
  have h₅ : n = 0 := by sorry
  have h₆ : m = 2 := by sorry
  have h₇ : m * n = 288 := h₃
  rw [h₅, h₆] at h₇
  norm_num at h₇ <;> simp_all (config := { decide := true }) <;> omega