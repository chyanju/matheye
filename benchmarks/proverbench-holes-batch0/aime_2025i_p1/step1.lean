import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem aime_2025i_p1 (S : Finset ℕ) (h₀ : ∀ (b : ℕ), b ∈ S ↔ b > 9 ∧ b + 7 ∣ 9 * b + 7) : ∑ b ∈ S, b = 70 :=
  by
  have h₁ : S = { 21, 49 } := by sorry
  have h₂ : (∑ b in S, b) = 70 := by sorry
  --  exact h₂
  hole