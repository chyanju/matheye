theorem h₂₂ (m a : ℕ) (h₀ : 0 < m ∧ 0 < a) (h₁ h₂₁ : (↑m : ℝ) / (↑a : ℝ) = 3 / 4) : (↑a : ℝ) ≠ 0 := by
  have h₂₂₁ : 0 < a := h₀.2
  exact_mod_cast (by linarith)