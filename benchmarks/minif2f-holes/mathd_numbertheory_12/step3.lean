import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁ (x : ℕ) (h : (15 ≤ x ∧ x ≤ 85) ∧ 20 ∣ x) : 15 ≤ x ∧ x ≤ 85 := by -- tauto
  hole