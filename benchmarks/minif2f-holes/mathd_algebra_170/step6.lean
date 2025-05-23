import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (S : Finset ℤ) (h₀ : ∀ (n : ℤ), n ∈ S ↔ |n - 2| ≤ 5 + 6 / 10) (n : ℤ) (h : |n - 2| ≤ 5 + 6 / 10) (h₂ : |n - 2| ≤ 5) (h₃ : -3 ≤ n) : n ≤ 7 := by
  have h₅ : abs (n - 2) ≤ 5 := h₂
  --  cases' le_or_lt 0 (n - 2) with h₆ h₆
  ·
    have h₇ : n - 2 ≤ 5 := by sorry
  --    omega
  ·
    have h₇ : -(n - 2) ≤ 5 := by sorry
  --    omega
  hole