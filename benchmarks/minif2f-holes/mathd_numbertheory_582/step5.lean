import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂₃ (n : ℕ) (h₀ : 0 < n) (h₁ : 3 ∣ n) (h₂₂ : n + 4 + (n + 6) + (n + 8) = n + 4 + (n + 6) + (n + 8)) : n + 4 + (n + 6) = 2 * n + 10 := by -- ring
  hole