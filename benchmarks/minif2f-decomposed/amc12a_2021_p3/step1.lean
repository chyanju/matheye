theorem amc12a_2021_p3 (x y : ℕ) (h₀ : x + y = 17402) (h₁ : 10 ∣ x) (h₂ : x / 10 = y) : (↑x : ℤ) - (↑y : ℤ) = 14238 :=
  by
  have h₃ : x = 10 * y := by sorry
  have h₄ : y = 1582 := by sorry
  have h₅ : x = 15820 := by sorry
  have h₆ : (x : ℤ) - (y : ℤ) = (14238 : ℤ) := by sorry
  exact h₆