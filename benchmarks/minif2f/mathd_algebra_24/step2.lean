import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)

example (x : ℝ)
  (h₀ : x / 50 = 40)
  (h₁ : x / 50 = 40)
  (h₂ : x = 40 * 50)
  : x = 40 * 50 := by
  -- exact h₂
  hole
