theorem h_main  : (∀ (a b : ℤ), (∃ i j, a = 2 * i ∧ b = 2 * j) ↔ ∃ k, a ^ 2 + b ^ 2 = 8 * k) → False :=
  by
  intro h
  have h₁ : (∃ i j, (4 : ℤ) = 2 * i ∧ (2 : ℤ) = 2 * j) ↔ ∃ k, (4 : ℤ) ^ 2 + (2 : ℤ) ^ 2 = 8 * k := by sorry
  have h₂ : ∃ (i j : ℤ), (4 : ℤ) = 2 * i ∧ (2 : ℤ) = 2 * j := by sorry
  have h₃ : ∃ (k : ℤ), (4 : ℤ) ^ 2 + (2 : ℤ) ^ 2 = 8 * k := by sorry
  rcases h₃ with ⟨k, hk⟩
  have h₄ : (4 : ℤ) ^ 2 + (2 : ℤ) ^ 2 = 8 * k := by sorry
  have h₅ : k = 5 / 2 := by sorry
  have h₆ : (k : ℤ) ≠ 5 / 2 := by sorry
  exact h₆ (by linarith)