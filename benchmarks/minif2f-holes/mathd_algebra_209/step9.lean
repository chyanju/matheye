import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₆ (σ : ℝ ≃ ℝ) (h₀ : σ.invFun 2 = 10) (h₁ : σ.invFun 10 = 1) (h₂ : σ.invFun 1 = 2) (h₃ : σ.toFun 1 = 10) (h₄ : σ.toFun 2 = 1) (h₅ : σ.toFun 10 = 2) : σ.toFun (σ.toFun 10) = 1 := by
  --  rw [h₅]
  --  rw [h₄] <;> norm_num
  hole