import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)

-- benchmarks/minif2f-dspv2/test/mathd_numbertheory_222.lean
-- the previous goal h₁ can be directly solved by "norm_num"
example (b : ℕ)
  (h₀ : Nat.lcm 120 b = 3720)
  (h₁ : Nat.gcd 120 b = 8)
  (h₂₁ : Nat.gcd 120 b * Nat.lcm 120 b = 120 * b)
  : 120 * b = 29760 := by
  -- option 1
  -- rw [h₀] at h₂₁
  -- linarith
  -- option 2
  -- rw [←h₂₁]
  -- rw [h₁]
  -- rw [h₀]
  hole
