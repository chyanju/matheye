import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃₁ (σ : ℝ ≃ ℝ) (h₀ : σ.invFun 2 = 10) (h₁ : σ.invFun 10 = 1) (h₂ : σ.invFun 1 = 2) : σ.toFun 1 = 10 := by
  have h₃₂ : σ.1 (σ.2 10) = 10 := by sorry
  --  rw [h₁] at h₃₂
  --  --  norm_num at h₃₂ ⊢ <;> linarith
  hole