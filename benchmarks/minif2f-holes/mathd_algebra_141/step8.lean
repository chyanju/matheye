import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₆₃ (a b : ℝ) (h₁ : a * b = 180) (h₂ : 2 * (a + b) = 54) (h₃ : a + b = 27) (h₄ : (a + b) ^ 2 = 729) (h₅ h₆₁ : a ^ 2 + b ^ 2 + 2 * (a * b) = 729) (h₆₂ : a * b = 180) : a ^ 2 + b ^ 2 + 2 * 180 = 729 := by
  --  calc
  --    a ^ 2 + b ^ 2 + 2 * 180 = a ^ 2 + b ^ 2 + 2 * (a * b) := by rw [h₆₂]
  --    _ = 729 := by linarith
  --    _ = 729 := by ring
  hole