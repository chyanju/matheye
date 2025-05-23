theorem h₃ (x y : ℕ) (h₀ : x + y = 17402) (h₁ : 10 ∣ x) (h₂ : x / 10 = y) : x = 10 * y :=
  by
  have h₃₁ : x = 10 * (x / 10) := by sorry
  rw [h₂] at h₃₁ <;> linarith