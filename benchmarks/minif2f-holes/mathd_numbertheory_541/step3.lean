import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃₂ (m n : ℕ) (h₀ : 1 < m) (h₁ : 1 < n) (h₂ h₃₁ : m * n = 2005) : n ≥ 2 := by -- linarith
  hole