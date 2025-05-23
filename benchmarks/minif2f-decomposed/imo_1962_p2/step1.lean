theorem imo_1962_p2 (x : ℝ) (h₀ : 0 ≤ 3 - x) (h₁ : 0 ≤ x + 1) (h₂ : 1 / 2 < √(3 - x) - √(x + 1)) : -1 ≤ x ∧ x < 1 - √31 / 8 := by
  have h₃ : -1 ≤ x := by sorry
  have h₄ : Real.sqrt (3 - x) - Real.sqrt (x + 1) > 1 / 2 := by sorry
  have h₅ : Real.sqrt (3 - x) > Real.sqrt (x + 1) + 1 / 2 := by sorry
  have h₆ : 3 - x > x + 1 + Real.sqrt (x + 1) + 1 / 4 := by sorry
  have h₇ : 7 - 8 * x > 4 * Real.sqrt (x + 1) := by sorry
  have h₈ : x < 7 / 8 := by sorry
  have h₉ : 0 ≤ Real.sqrt 31 := by sorry
  have h₁₀ : 64 * x ^ 2 - 128 * x + 33 > 0 := by sorry
  have h₁₁ : x < 1 - Real.sqrt 31 / 8 := by sorry
  exact ⟨h₃, h₁₁⟩