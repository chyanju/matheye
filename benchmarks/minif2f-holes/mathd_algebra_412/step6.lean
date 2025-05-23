import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃ (x y : ℝ) (h₀ : x + y = 25) (h₁ : x - y = 11) (h₂ : 2 * x = 36) : x = 18 :=
  by
  have h₄ : x = 18 := by sorry
  --  exact h₄
  hole