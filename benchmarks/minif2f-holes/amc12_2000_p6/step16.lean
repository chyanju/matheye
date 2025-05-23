import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₅₆ (p q : ℕ) (h₀ : Nat.Prime p ∧ Nat.Prime q) (h₁ : 4 ≤ p ∧ p ≤ 18) (h₂ : 4 ≤ q ∧ q ≤ 18) (h₃ : p = 5 ∨ p = 7 ∨ p = 11 ∨ p = 13 ∨ p = 17) (h₄ : q = 5 ∨ q = 7 ∨ q = 11 ∨ q = 13 ∨ q = 17) (h₅₁ : p ≥ 5) (h₅₃ : 2 ≤ q) (h₅₄ : 4 ≤ q) (h₅₅ : q ≥ 4) : q ≠ 4 := by
  --  intro h
  --  rw [h] at h₀
  --  norm_num [Nat.Prime] at h₀
  hole