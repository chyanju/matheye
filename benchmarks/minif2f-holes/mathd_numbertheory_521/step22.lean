import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₆₃ (m n : ℕ) (h₀ : Even m) (h₁ : Even n) (h₂ : m - n = 2) (h₃ : (n + 2) * n = 288) (h₄ : n ≥ 2) (h₅ : m = n + 2) (h₆₁ : (n + 2) * n = 288) (h₆₂ : ¬n ≤ 16) : n ≥ 17 := by -- omega
  hole