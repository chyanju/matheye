theorem h₆ (x : ℝ) (h₀ : 0 ≤ 3 - x) (h₁ : 0 ≤ x + 1) (h₂ : 1 / 2 < √(3 - x) - √(x + 1)) (h₃ : -1 ≤ x) (h₄ : √(3 - x) - √(x + 1) > 1 / 2) (h₅ : √(3 - x) > √(x + 1) + 1 / 2) : 3 - x > x + 1 + √(x + 1) + 1 / 4 :=
  by
  have h₆₁ : Real.sqrt (3 - x) > Real.sqrt (x + 1) + 1 / 2 := h₅
  have h₆₂ : 0 ≤ Real.sqrt (x + 1) := Real.sqrt_nonneg (x + 1)
  have h₆₃ : 0 ≤ Real.sqrt (3 - x) := Real.sqrt_nonneg (3 - x)
  have h₆₄ : 0 ≤ Real.sqrt (x + 1) * (1 / 2) := by sorry
  have h₆₅ : 0 ≤ Real.sqrt (3 - x) := Real.sqrt_nonneg (3 - x)
  have h₆₆ : 0 ≤ Real.sqrt (x + 1) := Real.sqrt_nonneg (x + 1)
  have h₆₇ : (Real.sqrt (x + 1) + 1 / 2) ≥ 0 := by sorry
  have h₆₈ : Real.sqrt (3 - x) > Real.sqrt (x + 1) + 1 / 2 := h₅
  have h₆₉ : (Real.sqrt (x + 1) + 1 / 2) ^ 2 < (Real.sqrt (3 - x)) ^ 2 := by sorry
  have h₆₁₀ : (Real.sqrt (x + 1) + 1 / 2) ^ 2 = (x + 1) + Real.sqrt (x + 1) + 1 / 4 := by sorry
  have h₆₁₁ : (Real.sqrt (3 - x)) ^ 2 = 3 - x := by sorry
  nlinarith [Real.sq_sqrt (show 0 ≤ x + 1 by linarith), Real.sq_sqrt (show 0 ≤ 3 - x by linarith)]