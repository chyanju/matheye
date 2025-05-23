theorem h₂ (f : ℚ → ℝ) (h₀ : ∀ x > 0, ∀ y > 0, f (x * y) = f x + f y) (h₁ : ∀ (p : ℕ), Nat.Prime p → f (↑p : ℚ) = (↑p : ℝ)) : f 1 = 0 :=
  by
  have h₂₁ : f (1 * 1 : ℚ) = f 1 + f 1 := by sorry
  have h₂₂ : f (1 * 1 : ℚ) = f 1 + f 1 := h₂₁
  have h₂₃ : f (1 * 1 : ℚ) = f 1 := by sorry
  have h₂₄ : f 1 + f 1 = f 1 := by sorry
  have h₂₅ : f 1 = 0 := by sorry
  exact h₂₅