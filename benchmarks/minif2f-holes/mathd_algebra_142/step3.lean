import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂₁ (m b : ℝ) (h₀ : m * 7 + b = -1) (h₁ : m * -1 + b = 7) : 8 * m = -8 := by
  have h₂₂ : m * 7 + b = -1 := h₀
  have h₂₃ : m * -1 + b = 7 := h₁
  have h₂₄ : (m * 7 + b) - (m * -1 + b) = -1 - 7 := by sorry
  have h₂₅ : (m * 7 + b) - (m * -1 + b) = 8 * m := by sorry
  have h₂₆ : 8 * m = -8 := by sorry
  --  exact h₂₆
  hole