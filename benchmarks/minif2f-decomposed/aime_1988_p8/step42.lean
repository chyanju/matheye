theorem h₁₁₁ (f : ℕ → ℕ → ℝ) (h₀ : ∀ (x : ℕ), 0 < x → f x x = (↑x : ℝ)) (h₁ : ∀ (x y : ℕ), 0 < x ∧ 0 < y → f x y = f y x) (h₂ : ∀ (x y : ℕ), 0 < x ∧ 0 < y → ((↑x : ℝ) + (↑y : ℝ)) * f x y = (↑y : ℝ) * f x (x + y)) (h₃ : f 2 2 = 2) (h₄ : f 2 4 = 4) (h₅ : f 4 2 = 4) (h₆ : f 4 6 = 12) (h₇ : f 4 10 = 20) (h₈ : f 10 4 = 20) (h₉ : f 10 14 = 70) (h₁₀ : f 14 10 = 70) : (14 + 10) * f 14 10 = 10 * f 14 24 :=
  by
  have h₁₁₂ : 0 < (14 : ℕ) ∧ 0 < (10 : ℕ) := by sorry
  have h₁₁₃ := h₂ 14 10 h₁₁₂
  norm_num at h₁₁₃ ⊢ <;> ring_nf at h₁₁₃ ⊢ <;> (try norm_num at h₁₁₃ ⊢) <;> (try linarith) <;>
      (try ring_nf at h₁₁₃ ⊢ <;> norm_num at h₁₁₃ ⊢ <;> linarith) <;>
    (try linarith)