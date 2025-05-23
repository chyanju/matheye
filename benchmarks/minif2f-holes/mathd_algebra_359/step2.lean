import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁ (y : ℝ) (h₀ : y + 6 + y = 2 * 12) : 2 * y + 6 = 24 := by
  have h₁₁ : y + 6 + y = 2 * 12 := h₀
  have h₁₂ : y + 6 + y = 2 * y + 6 := by sorry
  --  rw [h₁₂] at h₁₁
  --  linarith
  hole