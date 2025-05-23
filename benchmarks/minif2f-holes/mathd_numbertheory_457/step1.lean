import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_numbertheory_457 (n : ℕ) (h₀ : 0 < n) (h₁ : 80325 ∣ n !) : 17 ≤ n :=
  by
  have h₂ : 17 ∣ 80325 := by sorry
  have h₃ : 17 ∣ n ! := by sorry
  have h₄ : n < 17 → False := by sorry
  have h₅ : 17 ≤ n := by sorry
  --  exact h₅
  hole