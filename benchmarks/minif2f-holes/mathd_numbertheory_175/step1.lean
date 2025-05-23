import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_numbertheory_175  : 2 ^ 2010 % 10 = 4 :=
  by
  have h₀ : (2 ^ 2010 : ℕ) % 10 = 4 := by sorry
  --  exact h₀
  hole