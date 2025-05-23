import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h_main (x : ℤ) (h₀ : x < 0) (h₁ : 24 * x % 1199 = 15) : x ≤ -449 := by
  --  by_contra h
  have h₂ : x ≥ -448 := by sorry
  have h₃ : x % 1199 = 750 := by sorry
  have h₄ : x ≥ 750 := by sorry
  --  linarith
  hole