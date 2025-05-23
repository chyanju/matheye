import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₅ (a b : ℝ) (h₀ : a ^ 2 + b ^ 2 = 1) (h₁ : a ≤ 1) (h₂ : a ≥ -1) (h₃ : b ≤ 1) (h₄ : b ≥ -1) : a ≥ b → a * b + |a - b| ≤ 1 := by
  --  intro h₅
  have h₅₁ : abs (a - b) = a - b := by sorry
  --  rw [h₅₁]
  have h₅₂ : a * b + (a - b) ≤ 1 := by sorry
  --  linarith
  hole