import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₅₁ (σ : ℝ ≃ ℝ) (h₀ : σ.invFun 2 = 10) (h₁ : σ.invFun 10 = 1) (h₂ : σ.invFun 1 = 2) (h₃ : σ.toFun 1 = 10) (h₄ : σ.toFun 2 = 1) : σ.toFun (σ.invFun 2) = 2 := by -- apply Equiv.apply_symm_apply
  hole