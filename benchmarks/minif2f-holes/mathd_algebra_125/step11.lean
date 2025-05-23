import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₅₅ (x y : ℕ) (h₀ : 0 < x ∧ 0 < y) (h₁ : 5 * x = y) (h₂ : (↑x : ℤ) - 3 + ((↑y : ℤ) - 3) = 30) (h₃ : (↑x : ℤ) + (↑y : ℤ) = 36) (h₄ : x + y = 36) (h₅₁ : y = 5 * x) (h₅₂ h₅₃ : x + 5 * x = 36) (h₅₄ : 6 * x = 36) : x = 6 := by -- omega
  hole