import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₆₁ (m n : ℕ) (h₀ : Even m) (h₁ : Even n) (h₂ : m - n = 2) (h₃ : (n + 2) * n = 288) (h₄ : n ≥ 2) (h₅ : m = n + 2) : (n + 2) * n = 288 := by -- simpa [mul_comm, mul_assoc, mul_left_comm] using h₃
  hole