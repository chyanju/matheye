import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (a m c : ℕ) (h₀ : a + m + c = 12) (h₁ : a ≤ 12) : m ≤ 12 := by -- omega
  hole