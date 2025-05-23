import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₇ (n : ℕ) (h₀ h₃ : 3 * n % 11 = 2) (h₆ : 3 * (n % 11) = 3 * n % 33) : 3 * n % 33 % 11 = 3 * n % 11 := by -- omega
  hole