import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃₂ (x y : ℕ) (h₀ : 0 < x ∧ 0 < y) (h₁ : 5 * x = y) (h₂ h₃₁ : (↑x : ℤ) - 3 + ((↑y : ℤ) - 3) = 30) : (↑x : ℤ) + (↑y : ℤ) - 6 = 30 := by -- linarith
  hole