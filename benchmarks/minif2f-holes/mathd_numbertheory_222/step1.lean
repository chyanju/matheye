import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_numbertheory_222 (b : ℕ) (h₀ : Nat.lcm 120 b = 3720) (h₁ : Nat.gcd 120 b = 8) : b = 248 :=
  by
  have h₂ : 120 * b = 29760 := by sorry
  have h₃ : b = 248 := by sorry
  --  exact h₃
  hole