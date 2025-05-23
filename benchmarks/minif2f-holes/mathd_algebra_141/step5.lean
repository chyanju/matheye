import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₅ (a b : ℝ) (h₁ : a * b = 180) (h₂ : 2 * (a + b) = 54) (h₃ : a + b = 27) (h₄ : (a + b) ^ 2 = 729) : a ^ 2 + b ^ 2 + 2 * (a * b) = 729 :=
  by
  have h₅₁ : (a + b) ^ 2 = a ^ 2 + b ^ 2 + 2 * (a * b) := by sorry
  --  rw [h₄] at h₅₁
  --  linarith
  hole