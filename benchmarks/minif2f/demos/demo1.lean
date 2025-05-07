import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)

-- benchmarks/minif2f-dspv2/test/mathd_algebra_143.lean
example (f g : ℝ → ℝ)
  (h₀ : ∀ (x : ℝ), f x = x + 1)
  (h₁ : ∀ (x : ℝ), g x = x ^ 2 + 3)
  (h₂ : g 2 = 7)
  : (f (g 2) = 8) := by
  -- option 1
  -- rw [h₂]
  -- rw [h₀]
  -- norm_num
  -- option 2
  -- rw [h₀]
  -- linarith
  hole
