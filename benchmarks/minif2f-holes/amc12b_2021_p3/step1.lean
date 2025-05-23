import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem amc12b_2021_p3 (x : ℝ) (h₀ : 2 + 1 / (1 + 1 / (2 + 2 / (3 + x))) = 144 / 53) : x = 3 / 4 :=
  by
  have h₁ : 3 + x ≠ 0 := by sorry
  have h₂ : 8 + 2 * x ≠ 0 := by sorry
  have h₃ : 11 + 3 * x ≠ 0 := by sorry
  have h₄ : (30 + 8 * x : ℝ) / (11 + 3 * x) = 144 / 53 := by sorry
  have h₅ : x = 3 / 4 := by sorry
  --  rw [h₅] <;> norm_num <;> linarith
  hole