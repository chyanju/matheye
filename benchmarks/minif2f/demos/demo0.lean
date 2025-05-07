import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)

-- benchmarks/minif2f-dspv2/test/mathd_algebra_141.lean
example (a b : ℝ)
  (h₁ : a * b = 180)
  (h₂ : 2 * (a + b) = 54)
  (h₃ : a + b = 27)
  : (a + b) ^ 2 = 729 := by
  -- rw [h₃]
  -- norm_num
  hole
