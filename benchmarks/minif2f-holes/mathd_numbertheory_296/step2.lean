import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h_main (n : ℕ) (h₀ : 2 ≤ n) (h₁ : ∃ x, x ^ 3 = n) (h₂ : ∃ t, t ^ 4 = n) : n ≥ 4096 := by
  --  obtain ⟨t, ht⟩ := h₂
  have h₃ : t ≥ 2 := by sorry
  have h₄ : t ≥ 8 := by sorry
  have h₅ : t ^ 4 ≥ 8 ^ 4 := by sorry
  have h₆ : n = t ^ 4 := by sorry
  have h₇ : n ≥ 4096 := by sorry
  --  exact h₇
  hole