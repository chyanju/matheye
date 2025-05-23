import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_algebra_196 (S : Finset ℝ) (h₀ : ∀ (x : ℝ), x ∈ S ↔ |2 - x| = 3) : ∑ k ∈ S, k = 4 :=
  by
  have h₁ : S = {-1, 5} := by sorry
  have h₂ : (∑ k in S, k) = 4 := by sorry
  --  exact h₂
  hole