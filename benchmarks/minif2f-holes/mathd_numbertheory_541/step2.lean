import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃ (m n : ℕ) (h₀ : 1 < m) (h₁ : 1 < n) (h₂ : m * n = 2005) : m ≤ 1002 := by
  have h₃₁ : m * n = 2005 := h₂
  have h₃₂ : n ≥ 2 := by sorry
  have h₃₃ : m ≤ 1002 := by sorry
  --  exact h₃₃
  hole