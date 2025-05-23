import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_numbertheory_299  : 1 * 3 * 5 * 7 * 9 * 11 * 13 % 10 = 5 :=
  by
  have h₀ : (1 * 3 * 5 * 7 * 9 * 11 * 13 : ℕ) % 10 = 5 := by sorry
  --  exact h₀
  hole