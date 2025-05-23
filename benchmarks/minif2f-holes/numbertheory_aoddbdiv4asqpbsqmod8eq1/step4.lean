import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem this (a : ℤ) (b : ℕ) (h₁ : 4 ∣ b) (k : ℤ) (hk : a = 2 * k + 1) : a % 8 = (2 * k + 1) % 8 := by -- omega
  hole