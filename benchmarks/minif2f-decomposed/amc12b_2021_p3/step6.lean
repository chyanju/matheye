theorem h₅ (x : ℝ) (h₀ : 2 + 1 / (1 + 1 / (2 + 2 / (3 + x))) = 144 / 53) (h h₂ h₄ : 3 + x = 0) : 2 + 2 / (3 + x) = 2 := by
  rw [h₄]
  norm_num