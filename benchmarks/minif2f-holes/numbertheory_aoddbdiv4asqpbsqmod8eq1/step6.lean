import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem this (a : ℤ) (b : ℕ) (h₁ : 4 ∣ b) (k : ℤ) (hk : a = 2 * k + 1) (this : a % 8 = (2 * k + 1) % 8) : k % 8 = 0 ∨ k % 8 = 1 ∨ k % 8 = 2 ∨ k % 8 = 3 ∨ k % 8 = 4 ∨ k % 8 = 5 ∨ k % 8 = 6 ∨ k % 8 = 7 :=
  --  by omega
  hole