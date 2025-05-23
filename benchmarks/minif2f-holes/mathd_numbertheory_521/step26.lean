import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₇ (m n : ℕ) (h₀ : Even m) (h₁ : Even n) (h₂ : m - n = 2) (h₃ : m * n = 288) (h₄ : n ≥ 2) (h₅ : m = n + 2) (h₆ : n = 16) : m = 18 := by -- rw [h₅, h₆] <;> norm_num <;> omega
  hole