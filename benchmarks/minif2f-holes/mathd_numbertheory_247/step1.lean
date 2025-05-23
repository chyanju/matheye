import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_numbertheory_247 (n : ℕ) (h₀ : 3 * n % 11 = 2) : n % 11 = 8 :=
  by
  have h₁ : n % 11 = 8 := by sorry
  --  exact h₁
  hole