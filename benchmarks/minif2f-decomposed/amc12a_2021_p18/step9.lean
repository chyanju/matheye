theorem h₃₂ (f : ℚ → ℝ) (h₀ : ∀ x > 0, ∀ y > 0, f (x * y) = f x + f y) (h₁ : ∀ (p : ℕ), Nat.Prime p → f (↑p : ℚ) = (↑p : ℝ)) (h₂ : f 1 = 0) (h₃₁ : Nat.Prime 5) : f 5 = 5 := by
  have h₃₃ : f (5 : ℚ) = 5 := h₁ 5 h₃₁
  norm_num at h₃₃ ⊢ <;> simp_all [h₃₃] <;> norm_num <;> linarith