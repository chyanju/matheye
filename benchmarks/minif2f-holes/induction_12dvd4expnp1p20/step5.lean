import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃ (n : ℕ) (h₁ : 4 ^ (n + 1) % 12 = 4) : (4 ^ (n + 1) + 20) % 12 = 0 := by -- omega
  hole