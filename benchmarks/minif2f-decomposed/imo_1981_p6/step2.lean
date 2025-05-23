theorem h_f₁ (f : ℕ → ℕ → ℕ) (h₀ : ∀ (y : ℕ), f 0 y = y + 1) (h₁ : ∀ (x : ℕ), f (x + 1) 0 = f x 1) (h₂ : ∀ (x y : ℕ), f (x + 1) (y + 1) = f x (f (x + 1) y)) : ∀ (y : ℕ), f 1 y = y + 2 := by
  intro y
  induction y with
  |
    zero =>
    have h₁₀ : f 1 0 = f 0 1 := by
      have h₁₀₁ := h₁ 0
      simp at h₁₀₁ ⊢ <;> linarith
    have h₁₁ : f 0 1 = 2 := by
      have h₁₁₁ := h₀ 1
      simp at h₁₁₁ ⊢ <;> linarith
    have h₁₂ : f 1 0 = 2 := by linarith
    simp [h₁₂] <;> norm_num
  | succ y
    ih =>
    have h₂₀ : f 1 (y + 1) = f 0 (f 1 y) := by
      have h₂₀₁ := h₂ 0 y
      simp at h₂₀₁ ⊢ <;> linarith
    have h₂₁ : f 0 (f 1 y) = f 1 y + 1 := by
      have h₂₁₁ := h₀ (f 1 y)
      simp at h₂₁₁ ⊢ <;> linarith
    have h₂₂ : f 1 (y + 1) = f 1 y + 1 := by linarith
    have h₂₃ : f 1 (y + 1) = (y + 1) + 2 := by rw [h₂₂, ih] <;> ring <;> omega
    exact h₂₃