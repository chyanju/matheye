import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃ (a d : ℝ) (h₀ : ∑ k ∈ Finset.range 5, (a + (↑k : ℝ) * d) = 70) (h₁ : ∑ k ∈ Finset.range 10, (a + (↑k : ℝ) * d) = 210) (h₂ : 5 * a + 10 * d = 70) : 10 * a + 45 * d = 210 :=
  by
  have h₃₁ : (∑ k in Finset.range 10, (a + k * d : ℝ)) = 10 * a + 45 * d := by sorry
  --  rw [h₃₁] at h₁
  --  linarith
  hole