theorem h3 (h1 : 100 ^ 2 - 7 ^ 2 = (100 - 7) * (100 + 7)) (h2 : 70 ^ 2 - 11 ^ 2 = (70 - 11) * (70 + 11)) : (100 ^ 2 - 7 ^ 2) / (70 ^ 2 - 11 ^ 2) * ((70 - 11) * (70 + 11) / ((100 - 7) * (100 + 7))) = 1 :=
  by
  rw [h1, h2]
  have h4 : (70 - 11 : ℝ) ≠ 0 := by sorry
  have h5 : (70 + 11 : ℝ) ≠ 0 := by sorry
  have h6 : (100 - 7 : ℝ) ≠ 0 := by sorry
  have h7 : (100 + 7 : ℝ) ≠ 0 := by sorry
  field_simp [h4, h5, h6, h7] <;> ring_nf <;> norm_num <;> linarith