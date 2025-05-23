import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (σ : ℝ ≃ ℝ) (h₀ : σ.invFun 2 = 10) (h₁ : σ.invFun 10 = 1) (h₂ : σ.invFun 1 = 2) (h₃ : σ.toFun 1 = 10) : σ.toFun 2 = 1 := by
  have h₄₁ : σ.1 (σ.2 1) = 1 := by sorry
  --  rw [h₂] at h₄₁
  --  --  norm_num at h₄₁ ⊢ <;> linarith
  hole