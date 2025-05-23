theorem mathd_algebra_598 (a b c d : ℝ) (h₁ : 4 ^ a = 5) (h₂ : 5 ^ b = 6) (h₃ : 6 ^ c = 7) (h₄ : 7 ^ d = 8) : a * b * c * d = 3 / 2 :=
  by
  have h₅ : a = Real.log 5 / Real.log 4 := by sorry
  have h₆ : b = Real.log 6 / Real.log 5 := by sorry
  have h₇ : c = Real.log 7 / Real.log 6 := by sorry
  have h₈ : d = Real.log 8 / Real.log 7 := by sorry
  have h₉ : a * b * c * d = (Real.log 8) / (Real.log 4) := by sorry
  have h₁₀ : Real.log 8 = 3 * Real.log 2 := by sorry
  have h₁₁ : Real.log 4 = 2 * Real.log 2 := by sorry
  have h₁₂ : a * b * c * d = 3 / 2 := by sorry
  rw [h₁₂] <;> norm_num