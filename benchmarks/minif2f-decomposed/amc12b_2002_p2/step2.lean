theorem h₁ (x : ℤ) (h₀ : x = 4) : (3 * x - 2) * (4 * x + 1) - (3 * x - 2) * (4 * x) + 1 = 3 * x - 1 :=
  by
  have h₁₁ : (3 * x - 2) * (4 * x + 1) - (3 * x - 2) * (4 * x) + 1 = (3 * x - 2) * ((4 * x + 1) - (4 * x)) + 1 := by sorry
  rw [h₁₁]
  have h₁₂ : (3 * x - 2) * ((4 * x + 1) - (4 * x)) + 1 = (3 * x - 2) * 1 + 1 := by sorry
  rw [h₁₂]
  have h₁₃ : (3 * x - 2 : ℤ) * 1 + 1 = 3 * x - 1 := by sorry
  rw [h₁₃] <;> ring_nf at h₀ ⊢ <;> omega