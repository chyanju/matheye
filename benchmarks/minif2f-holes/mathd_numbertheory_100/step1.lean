import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_numbertheory_100 (n : ℕ) (h₀ : 0 < n) (h₁ : n.gcd 40 = 10) (h₂ : n.lcm 40 = 280) : n = 70 :=
  by
  have h₃ : n * 40 = 2800 := by sorry
  have h₄ : n = 70 := by sorry
  --  rw [h₄] <;> norm_num <;> try linarith
  hole