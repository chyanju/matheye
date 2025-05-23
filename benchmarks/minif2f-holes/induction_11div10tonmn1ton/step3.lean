import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁ (n : ℕ) : 10 ≡ -1 [ZMOD 11] := by -- norm_num [Int.ModEq]
  hole