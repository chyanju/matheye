theorem h₂ (n : ℕ) (h₀ : 0 < n) (h₁ : 3 ∣ n) : n + 4 + (n + 6) + (n + 8) = 3 * n + 18 :=
  by
  have h₂₁ : n + 4 + (n + 6) + (n + 8) = 3 * n + 18 := by sorry
  rw [h₂₁] <;> ring