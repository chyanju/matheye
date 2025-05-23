theorem h₃ (σ : ℝ ≃ ℝ) (h : σ.toFun 2 = σ.invFun 2) (h₁ : σ.toFun (σ.toFun 2) = σ.toFun (σ.invFun 2)) (h₂ : σ.toFun (σ.invFun 2) = 2) : σ.toFun (σ.toFun 2) = 2 := by
  rw [h₁]
  rw [h₂] <;> simp [Equiv.toFun_as_coe, Equiv.invFun_as_coe] <;> aesop