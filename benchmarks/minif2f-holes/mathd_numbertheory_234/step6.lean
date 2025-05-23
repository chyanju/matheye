import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂₄ (a b : ℕ) (h₀ : 1 ≤ a ∧ a ≤ 9 ∧ b ≤ 9) (h₁ : (10 * a + b) ^ 3 = 912673) (h : ¬10 * a + b ≤ 97) (h₂₁ : 10 * a + b ≥ 98) (h₂₂ : (10 * a + b) ^ 3 ≥ 98 ^ 3) (h₂₃ : 98 ^ 3 > 912673) : (10 * a + b) ^ 3 > 912673 := by -- linarith
  hole