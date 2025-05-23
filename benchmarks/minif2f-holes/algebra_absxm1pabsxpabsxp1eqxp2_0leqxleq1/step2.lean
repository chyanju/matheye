import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁ (x : ℝ) (h₀ : |x - 1| + |x| + |x + 1| = x + 2) : 0 ≤ x := by
  --  by_contra h
  have h₂ : x < 0 := by sorry
  --  by_cases h₃ : x < -1
  ·
    have h₄ : abs (x - 1) = -(x - 1) := by sorry
    have h₅ : abs x = -x := by sorry
    have h₆ : abs (x + 1) = -(x + 1) := by sorry
  --    rw [h₄, h₅, h₆] at h₀
    have h₇ : -(x - 1) + -x + -(x + 1) = x + 2 := by sorry
    have h₈ : x = -1 / 2 := by sorry
  --    linarith
  ·
    have h₄ : x ≥ -1 := by sorry
    have h₅ : abs (x - 1) = -(x - 1) := by sorry
    have h₆ : abs x = -x := by sorry
    have h₇ : abs (x + 1) = x + 1 := by sorry
  --    rw [h₅, h₆, h₇] at h₀
    have h₈ : -(x - 1) + -x + (x + 1) = x + 2 := by sorry
    have h₉ : x = 0 := by sorry
  --    linarith
  hole