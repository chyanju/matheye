theorem h₂ (σ : ℝ ≃ ℝ) (h : σ.toFun 2 = σ.invFun 2) (h₁ : σ.toFun (σ.toFun 2) = σ.toFun (σ.invFun 2)) : σ.toFun (σ.invFun 2) = 2 := by
  have h₂₁ : σ.1 (σ.2 2) = 2 := by sorry
  exact h₂₁