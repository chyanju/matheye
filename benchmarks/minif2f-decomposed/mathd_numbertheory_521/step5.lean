theorem h₅₃ (m n : ℕ) (h₀ : Even m) (h₁ : Even n) (h₂ : m - n = 2) (h₃ : m * n = 288) (h : ¬n ≥ 2) (h₅₁ : n ≤ 1) (h₅₂ : Even n) : n % 2 = 0 := by
  rw [even_iff_two_dvd] at h₅₂
  omega