import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_algebra_398 (a b c : ℝ) (h₀ : 0 < a ∧ 0 < b ∧ 0 < c) (h₁ : 9 * b = 20 * c) (h₂ : 7 * a = 4 * b) : 63 * a = 80 * c :=
  by
  have h₃ : 63 * a = 36 * b := by sorry
  have h₄ : 36 * b = 80 * c := by sorry
  have h₅ : 63 * a = 80 * c := by sorry
  --  exact h₅
  hole