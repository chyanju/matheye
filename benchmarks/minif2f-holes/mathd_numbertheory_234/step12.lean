import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (a b : ℕ) (h₀ : 1 ≤ a ∧ a ≤ 9 ∧ b ≤ 9) (h₁ : (10 * a + b) ^ 3 = 912673) (h₂ : 10 * a + b ≤ 97) (h₃ : 10 * a + b ≥ 97) : 10 * a + b = 97 := by
  have h₅ : 10 * a + b ≤ 97 := h₂
  have h₆ : 10 * a + b ≥ 97 := h₃
  --  omega
  hole