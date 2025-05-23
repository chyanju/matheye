import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (S : Finset ℝ) (h₀ : ∀ (x : ℝ), x ∈ S ↔ (x + 3) ^ 2 = 121) (x : ℝ) (h : (x + 3) ^ 2 = 121) : (x + 3) ^ 2 = 121 := by -- exact h
  hole