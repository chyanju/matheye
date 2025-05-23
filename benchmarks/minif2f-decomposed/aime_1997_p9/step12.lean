theorem h₆ (a : ℝ) (h₀ : 0 < a) (h₁ : 1 / a - (↑⌊1 / a⌋ : ℝ) = a ^ 2 - (↑⌊a ^ 2⌋ : ℝ)) (h₂ : 2 < a ^ 2) (h₃ : a ^ 2 < 3) (h₄ : ⌊a ^ 2⌋ = 2) (h₅ : ⌊1 / a⌋ = 0) : 1 / a = a ^ 2 - 2 :=
  by
  have h₆₁ : (1 / a : ℝ) - ⌊(1 / a : ℝ)⌋ = a ^ 2 - ⌊(a ^ 2 : ℝ)⌋ := by sorry
  rw [h₅, h₄] at h₆₁
  ring_nf at h₆₁ ⊢ <;> linarith