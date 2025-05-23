import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁ (a m c : ℕ) (h₀ : a + m + c = 12) : a ≤ 12 := by -- omega
  hole