import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₅ (m n : ℕ) (h₀ : Even m) (h₁ : Even n) (h₂ : m - n = 2) (h₃ : m * n = 288) (h₄ : n ≥ 2) : m = n + 2 :=
  by
  have h₅₁ : m ≥ n + 2 := by sorry
  have h₅₂ : m < n + 3 := by sorry
  have h₅₃ : m = n + 2 := by sorry
  --  exact h₅₃
  hole