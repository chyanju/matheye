import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem hx_ne_zero (x y : ℝ) (h₀ : x ≠ 1 ∧ y ≠ 1) (h₁ : Real.log x / Real.log 2 = Real.log 16 / Real.log y) (h₂ : x * y = 64) : x ≠ 0 := by
  --  intro h
  --  rw [h] at h₂
  --  norm_num at h₂ ⊢ <;> linarith
  hole