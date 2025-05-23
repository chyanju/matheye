import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_numbertheory_582 (n : ℕ) (h₀ : 0 < n) (h₁ : 3 ∣ n) : (n + 4 + (n + 6) + (n + 8)) % 9 = 0 :=
  by
  have h₂ : (n + 4 + (n + 6) + (n + 8)) = 3 * n + 18 := by sorry
  have h₃ : (n + 4 + (n + 6) + (n + 8)) % 9 = 0 := by sorry
  --  exact h₃
  hole