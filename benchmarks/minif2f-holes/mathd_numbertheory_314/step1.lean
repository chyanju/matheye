import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_numbertheory_314 (r n : ℕ) (h₀ : r = 1342 % 13) (h₁ : 0 < n) (h₂ : 1342 ∣ n) (h₃ : n % 13 < r) : 6710 ≤ n :=
  by
  have h₄ : r = 3 := by sorry
  have h₅ : n % 13 < 3 := by sorry
  have h₆ : ¬(n < 6710) := by sorry
  have h₇ : 6710 ≤ n := by sorry
  --  exact h₇
  hole