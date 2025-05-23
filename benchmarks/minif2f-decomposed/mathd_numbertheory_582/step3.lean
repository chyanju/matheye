theorem h₂₁ (n : ℕ) (h₀ : 0 < n) (h₁ : 3 ∣ n) : n + 4 + (n + 6) + (n + 8) = 3 * n + 18 :=
  by
  have h₂₂ : n + 4 + (n + 6) + (n + 8) = (n + 4 + (n + 6)) + (n + 8) := by sorry
  rw [h₂₂]
  have h₂₃ : n + 4 + (n + 6) = 2 * n + 10 := by sorry
  rw [h₂₃]
  have h₂₄ : (2 * n + 10) + (n + 8) = 3 * n + 18 := by sorry
  rw [h₂₄] <;> ring