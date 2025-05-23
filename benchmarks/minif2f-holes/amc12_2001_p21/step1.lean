import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem amc12_2001_p21 (a b c d : ℕ) (h₀ : a * b * c * d = 8!) (h₁ : a * b + a + b = 524) (h₂ : b * c + b + c = 146) (h₃ : c * d + c + d = 104) : (↑a : ℤ) - (↑d : ℤ) = 10 :=
  by
  have h_fact : 8! = 40320 := by sorry
  have h_ab : (a + 1) * (b + 1) = 525 := by sorry
  have h_a : a = 24 := by sorry
  have h_b : b = 20 := by sorry
  have h_c : c = 6 := by sorry
  have h_d : d = 14 := by sorry
  have h_final : ↑a - ↑d = (10 : ℤ) := by sorry
  --  exact h_final
  hole