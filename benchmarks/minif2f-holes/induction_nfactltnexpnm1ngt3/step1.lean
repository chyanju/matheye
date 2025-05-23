import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem induction_nfactltnexpnm1ngt3 (n : ℕ) (h₀ : 3 ≤ n) : n ! < n ^ (n - 1) :=
  by
  have h_base : 3! < 3 ^ (3 - 1) := by sorry
  have h_inductive : ∀ (k : ℕ), 3 ≤ k → k ! < k ^ (k - 1) → (k + 1)! < (k + 1) ^ k := by sorry
  have h_main : n ! < n ^ (n - 1) := by sorry
  --  exact h_main
  hole