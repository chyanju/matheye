theorem h₄ (n : ℕ) (hn : n > 0) (p : ℕ → ℕ) (h₀ : ∀ (x : ℕ), p x = x ^ 2 - x + 41) (h₁ : 1 < (p n).gcd (p (n + 1))) (h₂ : p (n + 1) = p n + 2 * n) (h₃ : (p n).gcd (p (n + 1)) = (p n).gcd (2 * n)) : 1 < (p n).gcd (2 * n) := by
  rw [h₃] at h₁
  exact h₁