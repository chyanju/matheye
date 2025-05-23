theorem h₃ (f : ℕ → ℕ → ℕ) (h₀ : ∀ (y : ℕ), f 0 y = y + 1) (h₁ : ∀ (x : ℕ), f (x + 1) 0 = f x 1) (h₂ : ∀ (x y : ℕ), f (x + 1) (y + 1) = f x (f (x + 1) y)) (h_f₁ : ∀ (y : ℕ), f 1 y = y + 2) (h_f₂ : ∀ (y : ℕ), f 2 y = 2 * y + 3) (y : ℕ) : ∀ (y : ℕ), f 3 y = 2 ^ (y + 3) - 3 := by
  intro y
  induction y with
  |
    zero =>
    have h₃₀ : f 3 0 = f 2 1 := by
      have h₃₀₁ := h₁ 2
      simp at h₃₀₁ ⊢ <;> linarith
    have h₃₁ : f 2 1 = 5 := by
      have h₃₁₁ := h_f₂ 1
      simp at h₃₁₁ ⊢ <;> linarith
    have h₃₂ : f 3 0 = 5 := by linarith
    have h₃₃ : (2 : ℕ) ^ (0 + 3) - 3 = 5 := by norm_num
    simp [h₃₂, h₃₃] <;> norm_num
  | succ y
    ih =>
    have h₄₀ : f 3 (y + 1) = f 2 (f 3 y) := by
      have h₄₀₁ := h₂ 2 y
      simp at h₄₀₁ ⊢ <;> linarith
    have h₄₁ : f 2 (f 3 y) = 2 * f 3 y + 3 := by
      have h₄₁₁ := h_f₂ (f 3 y)
      simp at h₄₁₁ ⊢ <;> linarith
    have h₄₂ : f 3 (y + 1) = 2 * f 3 y + 3 := by linarith
    have h₄₃ : f 3 (y + 1) = 2 ^ ((y + 1) + 3) - 3 := by
      rw [h₄₂, ih]
      have h₅ : 2 * (2 ^ (y + 3) - 3) + 3 = 2 ^ ((y + 1) + 3) - 3 :=
        by
        have h₅₁ : y + 3 ≥ 3 := by omega
        have h₅₂ : 2 ^ (y + 3) ≥ 2 ^ 3 := by apply Nat.pow_le_pow_of_le_right <;> norm_num <;> omega
        have h₅₃ : 2 ^ (y + 3) ≥ 8 := by
          have h₅₄ : 2 ^ 3 = 8 := by norm_num
          linarith
        have h₅₄ : 2 ^ (y + 3) - 3 ≥ 5 := by
          have h₅₅ : 2 ^ (y + 3) ≥ 8 := by omega
          omega
        have h₅₅ : 2 * (2 ^ (y + 3) - 3) + 3 = 2 ^ ((y + 1) + 3) - 3 :=
          by
          have h₅₅₁ : 2 ^ ((y + 1) + 3) = 2 ^ (y + 4) := by ring_nf
          rw [h₅₅₁]
          have h₅₅₂ : 2 ^ (y + 4) = 2 ^ (y + 3 + 1) := by ring_nf
          rw [h₅₅₂]
          have h₅₅₃ : 2 ^ (y + 3 + 1) = 2 * 2 ^ (y + 3) := by simp [Nat.pow_succ, Nat.mul_add] <;> ring_nf
          rw [h₅₅₃]
          have h₅₅₄ : 2 ^ (y + 3) - 3 ≥ 0 := by omega
          have h₅₅₅ : 2 * (2 ^ (y + 3) - 3) + 3 = 2 * 2 ^ (y + 3) - 3 := by omega
          omega
        exact h₅₅
      omega
    exact h₄₃