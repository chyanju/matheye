theorem h₂ (x : ℝ) (h₀ : x ≠ -1) (h₁ : (x - 9) / (x + 1) = 2) : x + 1 ≠ 0 := by
  intro h
  apply h₀
  linarith