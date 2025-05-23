import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂₁ (n : ℕ) (h₀ : n = 11) (h₁ : 1 / 4 = 0) : n + 1 > 0 := by
  have h₂₁₁ : n ≥ 0 := by sorry
  --  linarith
  hole