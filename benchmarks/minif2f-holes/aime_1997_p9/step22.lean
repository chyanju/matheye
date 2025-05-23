import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₈₅ (a : ℝ) (h₀ : 0 < a) (h₁ : 1 / a - (↑⌊1 / a⌋ : ℝ) = a ^ 2 - (↑⌊a ^ 2⌋ : ℝ)) (h₂ : 2 < a ^ 2) (h₃ : a ^ 2 < 3) (h₄ : ⌊a ^ 2⌋ = 2) (h₅ : ⌊1 / a⌋ = 0) (h₆ : 1 / a = a ^ 2 - 2) (h₇ : a ^ 3 - 2 * a - 1 = 0) (h₈₁ : a ≠ 0) (h₈₂ h₈₄ : a ^ 3 - 2 * a - 1 = 0) : (a + 1) * (a ^ 2 - a - 1) = 0 := by
  --  ring_nf at h₈₄ ⊢
  --  nlinarith [sq_nonneg (a - 1), sq_nonneg (a + 1), sq_nonneg (a ^ 2 - 1)]
  hole