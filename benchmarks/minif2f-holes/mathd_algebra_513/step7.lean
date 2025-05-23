import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (a b : ℝ) (h₀ : 3 * a + 2 * b = 5) (h₁ : a + b = 2) (h₂ : a = 1) (h₃ : b = 1) : a = 1 ∧ b = 1 := by -- exact ⟨h₂, h₃⟩
  hole