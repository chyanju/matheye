import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁₀₆ (a b c d : ℝ) (h₀ : b = a ^ 2) (h₁ : a + b = 1) (h₂ : d = c ^ 2) (h₃ : c + d = 1) (h₄ : a ≠ c) (h₅ : a ^ 2 + a - 1 = 0) (h₆ : c ^ 2 + c - 1 = 0) (h₇ : a + c = -1) (h₈ : a * c = -1) (h₉ : (a - c) ^ 2 = 5) (h₁₀₂ : b = a ^ 2) (h₁₀₃ : d = c ^ 2) (h₁₀₄ : a + c = -1) (h₁₀₅ : a * c = -1) : b - d = a ^ 2 - c ^ 2 := by -- rw [h₁₀₂, h₁₀₃] <;> ring
  hole