import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂₂ (a b : ℕ) (h₀ : 1 ≤ a ∧ a ≤ 9 ∧ b ≤ 9) (h₁ : (10 * a + b) ^ 3 = 912673) (h : ¬10 * a + b ≤ 97) (h₂₁ : 10 * a + b ≥ 98) : (10 * a + b) ^ 3 ≥ 98 ^ 3 := by -- exact Nat.pow_le_pow_of_le_left (by omega) 3
  hole