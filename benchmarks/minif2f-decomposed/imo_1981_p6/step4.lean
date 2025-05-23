theorem h_f₃ (f : ℕ → ℕ → ℕ) (h₀ : ∀ (y : ℕ), f 0 y = y + 1) (h₁ : ∀ (x : ℕ), f (x + 1) 0 = f x 1) (h₂ : ∀ (x y : ℕ), f (x + 1) (y + 1) = f x (f (x + 1) y)) (h_f₁ : ∀ (y : ℕ), f 1 y = y + 2) (h_f₂ : ∀ (y : ℕ), f 2 y = 2 * y + 3) : ∀ (y : ℕ), f 3 y = 2 ^ (y + 3) - 3 := by
  intro y
  have h₃ : ∀ y, f 3 y = 2 ^ (y + 3) - 3 := by sorry
  exact h₃ y