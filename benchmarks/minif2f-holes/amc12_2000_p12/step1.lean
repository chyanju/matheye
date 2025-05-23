import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem amc12_2000_p12 (a m c : ℕ) (h₀ : a + m + c = 12) : a * m * c + a * m + m * c + a * c ≤ 112 :=
  by
  have h₁ : a ≤ 12 := by sorry
  have h₂ : m ≤ 12 := by sorry
  have h₃ : c ≤ 12 := by sorry
  have h₄ : a * m * c + a * m + m * c + a * c ≤ 112 := by sorry
  --  exact h₄
  hole