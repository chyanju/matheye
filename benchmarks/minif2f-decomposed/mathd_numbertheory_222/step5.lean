theorem h₄ (b : ℕ) (h₀ : Nat.lcm 120 b = 3720) (h₁ : Nat.gcd 120 b = 8) (h₂ : 120 * b = 29760) : b = 248 := by
  have h₅ : 120 * b = 29760 := h₂
  have h₆ : b = 248 := by sorry
  exact h₆