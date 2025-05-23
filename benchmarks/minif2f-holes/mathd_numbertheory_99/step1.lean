import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_numbertheory_99 (n : ℕ) (h₀ : 2 * n % 47 = 15) : n % 47 = 31 :=
  by
  have h₁ : n % 47 = 31 := by sorry
  --  exact h₁
  hole