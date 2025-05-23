import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄₄ (a b c : ℝ) (h₀ : 0 < a ∧ 0 < b ∧ 0 < c) (h₁ : a * (b + c) = 152) (h₂ : b * (c + a) = 162) (h₃ : c * (a + b) = 170) (h₄₂ : a * b + a * c = 152) : b * c + b * a = 162 := by
  have h₄₅ : b * c + b * a = b * (c + a) := by sorry
  --  rw [h₄₅]
  --  linarith
  hole