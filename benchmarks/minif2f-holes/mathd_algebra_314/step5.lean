import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂₁₁ (n : ℕ) (h₀ : n = 11) (h₁ : 1 / 4 = 0) : n ≥ 0 := by -- linarith
  hole