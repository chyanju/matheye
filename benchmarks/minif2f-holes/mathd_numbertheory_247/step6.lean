import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₆ (n : ℕ) (h₀ h₃ : 3 * n % 11 = 2) : 3 * (n % 11) = 3 * n % 33 := by -- omega
  hole