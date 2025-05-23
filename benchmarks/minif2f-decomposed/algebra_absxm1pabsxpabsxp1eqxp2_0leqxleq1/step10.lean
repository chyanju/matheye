theorem h₂ (x : ℝ) (h₀ : |x - 1| + |x| + |x + 1| = x + 2) (h₁ : 0 ≤ x) : x ≤ 1 := by
  by_contra h
  have h₃ : x > 1 := by sorry
  have h₄ : abs (x - 1) = x - 1 := by sorry
  have h₅ : abs x = x := by sorry
  have h₆ : abs (x + 1) = x + 1 := by sorry
  rw [h₄, h₅, h₆] at h₀
  have h₇ : x = 1 := by sorry
  linarith