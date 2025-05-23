theorem h₂ (n : ℕ) (h₀ : 9 ≤ n) : (n + 2)! = (n + 2) * (n + 1) * n ! :=
  by
  have h₃ : (n + 2 : ℕ)! = (n + 2 : ℕ) * (n + 1 : ℕ) * n ! := by sorry
  exact h₃