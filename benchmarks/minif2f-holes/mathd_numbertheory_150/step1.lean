import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_numbertheory_150 (n : ℕ) (h₀ : ¬Nat.Prime (7 + 30 * n)) : 6 ≤ n :=
  by
  have h₁ : n ≥ 6 := by sorry
  --  linarith
  hole