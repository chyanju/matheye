import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₆₁ (a d : ℝ) (h₀ : ∑ k ∈ Finset.range 5, (a + (↑k : ℝ) * d) = 70) (h₁ : ∑ k ∈ Finset.range 10, (a + (↑k : ℝ) * d) = 210) (h₂ : 5 * a + 10 * d = 70) (h₃ : 10 * a + 45 * d = 210) (h₄ : a + 2 * d = 14) (h₅ : 2 * a + 9 * d = 42) : d = 14 / 5 := by
  have h₆₂ : 5 * d = 14 := by sorry
  --  linarith
  hole