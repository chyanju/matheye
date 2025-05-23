theorem mathd_numbertheory_430 (a b c : ℕ) (h₀ : 1 ≤ a ∧ a ≤ 9) (h₁ : 1 ≤ b ∧ b ≤ 9) (h₂ : 1 ≤ c ∧ c ≤ 9) (h₃ : a ≠ b) (h₄ : a ≠ c) (h₅ : b ≠ c) (h₆ : a + b = c) (h₇ : 10 * a + a - b = 2 * c) (h₈ : c * b = 10 * a + a + a) : a + b + c = 8 :=
  by
  have h₉ : b = 3 * a := by sorry
  have h₁₀ : a ≤ 3 := by sorry
  have h₁₁ : c = 4 * a := by sorry
  have h₁₂ : a = 1 := by sorry
  have h₁₃ : b = 3 := by sorry
  have h₁₄ : c = 4 := by sorry
  have h₁₅ : a + b + c = 8 := by sorry
  exact h₁₅