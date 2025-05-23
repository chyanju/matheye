import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (x p : ℝ) (f : ℝ → ℝ) (h₀ : 0 < p ∧ p < 15) (h₁ : p ≤ x ∧ x ≤ 15) (h₂ : f x = |x - p| + |x - 15| + |x - p - 15|) (h₃ : x - p ≥ 0) : x - 15 ≤ 0 := by
  have h₄₁ : x ≤ 15 := h₁.2
  --  linarith
  hole