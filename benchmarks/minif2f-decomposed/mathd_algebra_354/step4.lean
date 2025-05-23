theorem h₃ (a d : ℝ) (h₀ : a + 6 * d = 30) (h₁ : a + 10 * d = 60) (h₂ : 4 * d = 30) : 14 * d = 105 := by
  have h₃₁ : 14 * d = (7 / 2 : ℝ) * (4 * d) := by sorry
  have h₃₂ : (7 / 2 : ℝ) * (4 * d) = (7 / 2 : ℝ) * 30 := by sorry
  have h₃₃ : (7 / 2 : ℝ) * 30 = 105 := by sorry
  calc
    14 * d = (7 / 2 : ℝ) * (4 * d) := by rw [h₃₁]
    _ = (7 / 2 : ℝ) * 30 := by rw [h₃₂]
    _ = 105 := by rw [h₃₃]