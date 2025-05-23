import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (n : ℕ) (h₀ : 2 ≤ n) (h₁ : ∃ x, x ^ 3 = n) (t : ℕ) (ht : t ^ 4 = n) (h : ¬t ≥ 2) : t ≤ 1 := by -- linarith
  hole