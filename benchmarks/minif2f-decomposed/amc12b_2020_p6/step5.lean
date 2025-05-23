theorem h₃ (n : ℕ) (h₀ : 9 ≤ n) (h₂ : (n + 2)! = (n + 2) * (n + 1) * n !) : (n + 1)! = (n + 1) * n ! :=
  by
  have h₄ : (n + 1 : ℕ)! = (n + 1 : ℕ) * n ! := by sorry
  exact h₄