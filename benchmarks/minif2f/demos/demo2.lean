import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)

-- benchmarks/minif2f-dspv2/test/mathd_numbertheory_185.lean
-- the previous goal h₁ can be directly solved by "norm_num"
example (n : ℕ)
  (h₀ : n % 5 = 3)
  (h₁ : 2 * n % 5 = 2 * (n % 5) % 5)
  : 2 * n % 5 = 2 * 3 % 5 := by
  -- option 1
  -- rw [h₁]
  -- rw [h₀]
  -- option 2
  -- omega
  hole
