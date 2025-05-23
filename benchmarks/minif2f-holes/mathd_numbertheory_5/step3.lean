import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (n : ℕ) (h₀ : 10 ≤ n) (h₁ : ∃ x, x ^ 2 = n) (h₂ : ∃ t, t ^ 3 = n) (t : ℕ) (ht : t ^ 3 = n) : t ≥ 3 := by
  --  by_contra h
  have h₅ : t ≤ 2 := by sorry
  have h₆ : t ^ 3 ≤ 8 := by sorry
  have h₉ : n ≤ 8 := by sorry
  --  linarith
  hole