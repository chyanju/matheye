import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃ (h₁ : 11 * 17 = 187) (h₂ : 194 = 11 * 17 + 7) : 194 % 11 = 7 := by -- omega
  hole