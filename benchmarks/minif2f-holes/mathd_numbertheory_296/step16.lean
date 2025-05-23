import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₆ (n : ℕ) (h₀ : 2 ≤ n) (h₁ : ∃ x, x ^ 3 = n) (t : ℕ) (ht : t ^ 4 = n) (h₃ : t ≥ 2) (h₄ : t ≥ 8) (h₅ : t ^ 4 ≥ 8 ^ 4) : n = t ^ 4 := by -- linarith
  hole