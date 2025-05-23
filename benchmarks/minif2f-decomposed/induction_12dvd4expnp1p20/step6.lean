theorem h₃ (n : ℕ) (h₁ : 4 ^ (n + 1) % 12 = 4) (h₂ : (4 ^ (n + 1) + 20) % 12 = 0) : 12 ∣ 4 ^ (n + 1) + 20 := by
  have h₄ : (4 ^ (n + 1) + 20) % 12 = 0 := h₂
  have h₅ : 12 ∣ 4 ^ (n + 1) + 20 := by sorry
  exact h₅