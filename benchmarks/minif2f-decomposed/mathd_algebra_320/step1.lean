theorem mathd_algebra_320 (x : ℝ) (a b c : ℕ) (h₀ : 0 < a ∧ 0 < b ∧ 0 < c ∧ 0 ≤ x) (h₁ : 2 * x ^ 2 = 4 * x + 9) (h₂ : x = ((↑a : ℝ) + √(↑b : ℝ)) / (↑c : ℝ)) (h₃ : c = 2) : a + b + c = 26 :=
  by
  have h₄ : x = (a + Real.sqrt b) / 2 := by sorry
  have h₅ : 2 * x ^ 2 = 4 * x + 9 := by sorry
  have h₆ : (a : ℝ) > 0 := by sorry
  have h₇ : (b : ℝ) > 0 := by sorry
  have h₈ : (2 : ℝ) > 0 := by sorry
  have h₉ : (a : ℝ) ^ 2 + (b : ℝ) + 2 * (a : ℝ) * Real.sqrt b = 4 * (a : ℝ) + 4 * Real.sqrt b + 18 := by sorry
  have h₁₀ : (2 * (a : ℝ) - 4) ^ 2 * (b : ℝ) = (4 * (a : ℝ) + 18 - (a : ℝ) ^ 2 - (b : ℝ)) ^ 2 := by sorry
  have h₁₁ : a = 2 := by sorry
  have h₁₂ : b = 22 := by sorry
  have h₁₃ : a + b + c = 26 := by sorry
  exact h₁₃