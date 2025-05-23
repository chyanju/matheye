import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (n : ℕ) (h₀ : ¬Nat.Prime (7 + 30 * n)) (h : ¬n ≥ 6) : n ≤ 5 := by -- linarith
  hole