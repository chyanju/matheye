theorem h₃ (σ : ℝ ≃ ℝ) (h₀ : σ.invFun 2 = 10) (h₁ : σ.invFun 10 = 1) (h₂ : σ.invFun 1 = 2) : σ.toFun 1 = 10 :=
  by
  have h₃₁ : σ.1 1 = 10 := by sorry
  exact h₃₁