import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_numbertheory_521 (m n : ℕ) (h₀ : Even m) (h₁ : Even n) (h₂ : m - n = 2) (h₃ : m * n = 288) : m = 18 :=
  by
  have h₄ : n ≥ 2 := by sorry
  have h₅ : m = n + 2 := by sorry
  have h₆ : n = 16 := by sorry
  have h₇ : m = 18 := by sorry
  --  apply h₇
  hole