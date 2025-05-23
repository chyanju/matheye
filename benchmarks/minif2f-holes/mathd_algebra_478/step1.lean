import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_algebra_478 (b h v : ℝ) (h₀ : 0 < b ∧ 0 < h ∧ 0 < v) (h₁ : v = 1 / 3 * (b * h)) (h₂ : b = 30) (h₃ : h = 13 / 2) : v = 65 :=
  by
  have h₄ : v = 65 := by sorry
  --  exact h₄
  hole