theorem mathd_algebra_209 (σ : ℝ ≃ ℝ) (h₀ : σ.invFun 2 = 10) (h₁ : σ.invFun 10 = 1) (h₂ : σ.invFun 1 = 2) : σ.toFun (σ.toFun 10) = 1 :=
  by
  have h₃ : σ.1 1 = 10 := by sorry
  have h₄ : σ.1 2 = 1 := by sorry
  have h₅ : σ.1 10 = 2 := by sorry
  have h₆ : σ.1 (σ.1 10) = 1 := by sorry
  exact h₆