import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem amc12b_2002_p19 (a b c : ℝ) (h₀ : 0 < a ∧ 0 < b ∧ 0 < c) (h₁ : a * (b + c) = 152) (h₂ : b * (c + a) = 162) (h₃ : c * (a + b) = 170) : a * b * c = 720 :=
  by
  have h₄ : a * b + a * c + b * c = 242 := by sorry
  have h₅ : a * b = 72 := by sorry
  have h₆ : a * c = 80 := by sorry
  have h₇ : b * c = 90 := by sorry
  have h₈ : a * b * c = 720 := by sorry
  --  rw [h₈] <;> norm_num
  hole