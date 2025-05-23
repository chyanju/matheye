import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (h₁ : 29 ^ 13 % 7 = 1) (h₂ : 5 ^ 13 % 7 = 5) : (29 ^ 13 - 5 ^ 13) % 7 = 3 := by -- omega
  hole