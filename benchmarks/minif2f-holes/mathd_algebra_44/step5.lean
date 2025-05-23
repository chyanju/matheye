import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃ (s t : ℝ) (h₀ : s = 9 - 2 * t) (h₁ : t = 3 * s + 1) (h₂ : s = 1) : t = 4 := by
  --  rw [h₂] at h₁
  --  --  norm_num at h₁ ⊢ <;> linarith
  hole