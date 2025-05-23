import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄₁ (p q : ℕ) (h₀ : Nat.Prime p ∧ Nat.Prime q) (h₁ : 4 ≤ p ∧ p ≤ 18) (h₂ : 4 ≤ q ∧ q ≤ 18) (h₃ : p = 5 ∨ p = 7 ∨ p = 11 ∨ p = 13 ∨ p = 17) : q = 5 ∨ q = 7 ∨ q = 11 ∨ q = 13 ∨ q = 17 :=
  by
  have h₅ := h₀.2
  have h₆ : q ≤ 18 := by sorry
  have h₇ : 4 ≤ q := by sorry
  --  --  interval_cases q <;> norm_num [Nat.Prime] at h₅ ⊢ <;> aesop
  hole