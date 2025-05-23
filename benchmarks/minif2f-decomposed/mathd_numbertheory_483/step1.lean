theorem mathd_numbertheory_483 (a : ℕ → ℕ) (h₀ : a 1 = 1) (h₁ : a 2 = 1) (h₂ : ∀ (n : ℕ), a (n + 2) = a (n + 1) + a n) : a 100 % 4 = 3 :=
  by
  have h₃ : a 0 = 0 := by sorry
  have h₄ : a 3 = 2 := by sorry
  have h₅ : a 4 = 3 := by sorry
  have h₆ : a 5 = 5 := by sorry
  have h₇ : a 6 = 8 := by sorry
  have h₈ : a 7 = 13 := by sorry
  have h₉ : a 8 = 21 := by sorry
  have h₁₀ : a 9 = 34 := by sorry
  have h₁₁ : a 10 = 55 := by sorry
  have h₁₂ : ∀ n, a (n + 6) % 4 = a n % 4 := by sorry
  have h₁₃ : a 100 % 4 = 3 := by sorry
  exact h₁₃