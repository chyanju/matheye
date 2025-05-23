import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h_base (n : ℕ) (h₀ : 3 ≤ n) : 3! < 3 ^ (3 - 1) := by -- norm_num [Nat.factorial] <;> decide
  hole