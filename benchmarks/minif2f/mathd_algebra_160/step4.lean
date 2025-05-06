import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)

example (n x : ℝ)
  (h₀ : n + x = 97)
  (h₁ : n + 5 * x = 265)
  (h₂₁ : 4 * x = 168) -- step0
  (h₂ : x = 42) -- step1
  (h₃₁ : n = 55) -- step2
  (h₃ : n = 55) -- step3
  : n + 2 * x = 139 := by
  -- rw [h₃, h₂]
  -- <;> norm_num
  hole
