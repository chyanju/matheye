import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (x : ℝ) (h₀ : (x - 7) ^ 2 ≥ 0) : x ^ 2 - 14 * x + 3 - (7 ^ 2 - 14 * 7 + 3) = (x - 7) ^ 2 := by -- ring_nf <;> nlinarith
  hole