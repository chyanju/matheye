import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (m n : ℕ) (h₀ : 1 < m) (h₁ : 1 < n) (h₂ : m * n = 2005) (h₃ : m ≤ 1002) : n ≤ 1002 := by
  have h₄₁ : m ≥ 2 := by sorry
  have h₄₂ : m * n = 2005 := h₂
  have h₄₃ : n ≤ 1002 := by sorry
  --  exact h₄₃
  hole