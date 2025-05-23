import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂₁ (s t : ℝ) (h₀ : s = 9 - 2 * t) (h₁ : t = 3 * s + 1) : s = 7 - 6 * s := by
  --  rw [h₁] at h₀
  --  ring_nf at h₀ ⊢
  --  linarith
  hole