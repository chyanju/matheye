import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃ (a m c : ℕ) (h₀ : a + m + c = 12) (h₁ : a ≤ 12) (h₂ : m ≤ 12) : c ≤ 12 := by -- omega
  hole