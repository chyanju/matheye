import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₅ (m n : ℕ) (h₀ : 1 < m) (h₁ : 1 < n) (h₂ h₃₁ : m * n = 2005) (h₃₂ : n ≥ 2) (h : ¬m ≤ 1002) (h₄ : m ≥ 1003) : m * n ≥ 1003 * n := by -- nlinarith
  hole