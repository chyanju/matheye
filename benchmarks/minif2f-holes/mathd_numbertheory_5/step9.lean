import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₇ (n : ℕ) (h₀ : 10 ≤ n) (h₁ : ∃ x, x ^ 2 = n) (h₂ : ∃ t, t ^ 3 = n) (t : ℕ) (ht : t ^ 3 = n) (h₄ : t ≥ 3) (h₅ : t ≥ 4) (h₆ : t ^ 3 ≥ 4 ^ 3) : n ≥ 64 := by -- linarith
  hole