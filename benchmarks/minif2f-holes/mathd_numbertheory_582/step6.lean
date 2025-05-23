import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂₄ (n : ℕ) (h₀ : 0 < n) (h₁ : 3 ∣ n) (h₂₂ : n + 4 + (n + 6) + (n + 8) = n + 4 + (n + 6) + (n + 8)) (h₂₃ : n + 4 + (n + 6) = 2 * n + 10) : 2 * n + 10 + (n + 8) = 3 * n + 18 := by -- ring
  hole