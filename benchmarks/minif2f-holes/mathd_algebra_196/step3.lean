import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃ (S : Finset ℝ) (h₀ : ∀ (x : ℝ), x ∈ S ↔ |2 - x| = 3) (x : ℝ) (h h₂ : |2 - x| = 3) : 2 - x = 3 ∨ 2 - x = -3 := by -- -- apply eq_or_eq_neg_of_abs_eq <;> linarith
  hole