theorem h_f₂ (f : ℕ → ℕ → ℕ) (h₀ : ∀ (y : ℕ), f 0 y = y + 1) (h₁ : ∀ (x : ℕ), f (x + 1) 0 = f x 1) (h₂ : ∀ (x y : ℕ), f (x + 1) (y + 1) = f x (f (x + 1) y)) (h_f₁ : ∀ (y : ℕ), f 1 y = y + 2) : ∀ (y : ℕ), f 2 y = 2 * y + 3 := by
  intro y
  induction y with
  |
    zero =>
    have h₂₀ : f 2 0 = f 1 1 := by
      have h₂₀₁ := h₁ 1
      simp at h₂₀₁ ⊢ <;> linarith
    have h₂₁ : f 1 1 = 3 := by
      have h₂₁₁ := h_f₁ 1
      simp at h₂₁₁ ⊢ <;> linarith
    have h₂₂ : f 2 0 = 3 := by linarith
    simp [h₂₂] <;> norm_num
  | succ y
    ih =>
    have h₃₀ : f 2 (y + 1) = f 1 (f 2 y) := by
      have h₃₀₁ := h₂ 1 y
      simp at h₃₀₁ ⊢ <;> linarith
    have h₃₁ : f 1 (f 2 y) = f 2 y + 2 := by
      have h₃₁₁ := h_f₁ (f 2 y)
      simp at h₃₁₁ ⊢ <;> linarith
    have h₃₂ : f 2 (y + 1) = f 2 y + 2 := by linarith
    have h₃₃ : f 2 (y + 1) = 2 * (y + 1) + 3 := by rw [h₃₂, ih] <;> ring <;> omega
    exact h₃₃