theorem h₆ (m n : ℕ) (h₀ : Even m) (h₁ : Even n) (h₂ : m - n = 2) (h₃ : m * n = 288) (h : ¬n ≥ 2) (h₅ : n = 0) : m = 2 := by
  have h₆₁ : m - n = 2 := h₂
  have h₆₂ : n = 0 := h₅
  rw [h₆₂] at h₆₁
  omega