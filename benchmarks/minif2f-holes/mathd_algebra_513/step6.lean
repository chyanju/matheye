import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃₁ (a b : ℝ) (h₀ : 3 * a + 2 * b = 5) (h₁ : a + b = 2) (h₂ : a = 1) : b = 1 := by
  have h₃₂ : a + b = 2 := h₁
  --  rw [h₂] at h₃₂
  --  linarith
  hole