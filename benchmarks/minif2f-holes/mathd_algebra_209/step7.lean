import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₅ (σ : ℝ ≃ ℝ) (h₀ : σ.invFun 2 = 10) (h₁ : σ.invFun 10 = 1) (h₂ : σ.invFun 1 = 2) (h₃ : σ.toFun 1 = 10) (h₄ : σ.toFun 2 = 1) : σ.toFun 10 = 2 := by
  have h₅₁ : σ.1 (σ.2 2) = 2 := by sorry
  --  rw [h₀] at h₅₁
  --  --  norm_num at h₅₁ ⊢ <;> linarith
  hole