import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (h₀ : Real.log 27 = 3 * Real.log 3) : Real.log 3 ≠ 0 := by
  have h₂₁ : Real.log 3 > 0 := Real.log_pos (by norm_num)
  --  linarith
  hole