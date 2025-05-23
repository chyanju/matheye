import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem aime_2025ii_p2 (S : Finset ℕ) (h₀ : ∀ (n : ℕ), n ∈ S ↔ n + 2 ∣ 3 * (n + 3) * (n ^ 2 + 9)) : ∑ n ∈ S, n = 49 :=
  by
  have h₁ : S = { 1, 11, 37 } := by sorry
  have h₂ : (∑ n in S, n) = 49 := by sorry
  --  exact h₂
  hole