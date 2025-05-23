theorem h₂₁ (x : ℝ) (n : ℕ) (a : ℕ → ℝ) (h₁ : ∀ (m : ℕ), a (m + 1) - a m = a (m + 2) - a (m + 1)) (h₂ : a 1 = 2 * x - 3) (h₃ : a 2 = 5 * x - 11) (h₄ : a 3 = 3 * x + 1) (h₅ : a n = 2009) (h_x : x = 4) (h_a0 : a 0 = 1) (m : ℕ) : ∀ (k : ℕ), a (k + 1) - a k = a 1 - a 0 := by
  intro k
  induction k with
  | zero =>
    norm_num [h_a0, h₂, h_x] at h₅ ⊢ <;> (try ring_nf at h₅ ⊢ <;> try linarith) <;>
        (try simp_all [h₁, h₂, h₃, h₄, h_x]) <;>
      (try ring_nf at * <;> linarith)
  | succ k ih =>
    have h₂₂ := h₁ k
    have h₂₃ := h₁ (k + 1)
    have h₂₄ := h₁ (k + 2)
    simp [ih, Nat.add_assoc] at h₂₂ h₂₃ h₂₄ ⊢ <;> (try ring_nf at h₂₂ h₂₃ h₂₄ ⊢ <;> linarith)