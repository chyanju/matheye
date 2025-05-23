import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂₆ (m b : ℝ) (h₀ : m * 7 + b = -1) (h₁ : m * -1 + b = 7) (h₂₂ : m * 7 + b = -1) (h₂₃ : m * -1 + b = 7) (h₂₄ : m * 7 + b - (m * -1 + b) = -1 - 7) (h₂₅ : m * 7 + b - (m * -1 + b) = 8 * m) : 8 * m = -8 := by -- linarith
  hole