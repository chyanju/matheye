import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂₁ (x y : ℤ) (h₀ : y ^ 2 + 3 * (x ^ 2 * y ^ 2) = 30 * x ^ 2 + 517) (h₁ : x ≠ 0) : 3 * x ^ 2 + 1 ∣ 30 * x ^ 2 + 517 := by
  --  use y ^ 2
  have h₂₁₁ : y ^ 2 + 3 * (x ^ 2 * y ^ 2) = 30 * x ^ 2 + 517 := h₀
  have h₂₁₂ : y ^ 2 * (3 * x ^ 2 + 1) = 30 * x ^ 2 + 517 := by sorry
  --  linarith
  hole