theorem amc12b_2021_p9  : Real.log 80 / Real.log 2 / (Real.log 2 / Real.log 40) - Real.log 160 / Real.log 2 / (Real.log 2 / Real.log 20) = 2 :=
  by
  have h₀ : Real.log 80 = 4 * Real.log 2 + Real.log 5 := by sorry
  have h₁ : Real.log 40 = 3 * Real.log 2 + Real.log 5 := by sorry
  have h₂ : Real.log 160 = 5 * Real.log 2 + Real.log 5 := by sorry
  have h₃ : Real.log 20 = 2 * Real.log 2 + Real.log 5 := by sorry
  have h₄ : Real.log 80 * Real.log 40 = 12 * (Real.log 2) ^ 2 + 7 * Real.log 2 * Real.log 5 + (Real.log 5) ^ 2 := by sorry
  have h₅ : Real.log 160 * Real.log 20 = 10 * (Real.log 2) ^ 2 + 7 * Real.log 2 * Real.log 5 + (Real.log 5) ^ 2 := by sorry
  have h₆ : Real.log 80 * Real.log 40 - Real.log 160 * Real.log 20 = 2 * (Real.log 2) ^ 2 := by sorry
  have h₇ :
    Real.log 80 / Real.log 2 / (Real.log 2 / Real.log 40) - Real.log 160 / Real.log 2 / (Real.log 2 / Real.log 20) = 2 := by sorry
  rw [h₇] <;> norm_num <;> linarith