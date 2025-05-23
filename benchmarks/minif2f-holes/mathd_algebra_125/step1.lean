import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_algebra_125 (x y : ℕ) (h₀ : 0 < x ∧ 0 < y) (h₁ : 5 * x = y) (h₂ : (↑x : ℤ) - 3 + ((↑y : ℤ) - 3) = 30) : x = 6 :=
  by
  have h₃ : (x : ℤ) + y = 36 := by sorry
  have h₄ : x + y = 36 := by sorry
  have h₅ : x = 6 := by sorry
  --  exact h₅
  hole