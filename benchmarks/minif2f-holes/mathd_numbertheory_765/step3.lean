import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (x : ℤ) (h₀ : x < 0) (h₁ : 24 * x % 1199 = 15) (h : ¬x ≤ -449) : x ≥ -448 := by -- linarith
  hole