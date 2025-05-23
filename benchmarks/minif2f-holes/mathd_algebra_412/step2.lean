import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (x y : ℝ) (h₀ : x + y = 25) (h₁ : x - y = 11) : 2 * x = 36 := by
  have h₃ : (x + y) + (x - y) = 25 + 11 := by sorry
  have h₄ : (x + y) + (x - y) = 2 * x := by sorry
  have h₅ : 2 * x = 36 := by sorry
  --  exact h₅
  hole