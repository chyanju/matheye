import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h_ab (a b c d : ℕ) (h₀ : a * b * c * d = 8!) (h₁ : a * b + a + b = 524) (h₂ : b * c + b + c = 146) (h₃ : c * d + c + d = 104) (h_fact : 8! = 40320) : (a + 1) * (b + 1) = 525 := by
  have h₁' : a * b + a + b = 524 := h₁
  have h₁'' : (a + 1) * (b + 1) = 525 := by sorry
  --  exact h₁''
  hole