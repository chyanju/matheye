import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₅₂ (a b c d : ℕ) (h₀ : a * b * c * d = 8!) (h₁ : a * b + a + b = 524) (h₂ : b * c + b + c = 146) (h₃ : c * d + c + d = 104) (h_fact : 8! = 40320) (h_ab : (a + 1) * (b + 1) = 525) (h_a : a = 24) (h_b : b = 20) (h₄ : 20 + c * 21 = 146) (h : ¬c ≤ 146) (h₅₁ : c ≥ 147) : 20 * c + 20 + c ≥ 20 * 147 + 20 + 147 := by -- nlinarith
  hole