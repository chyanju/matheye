import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₅₂ (m n : ℕ) (h₀ : Even m) (h₁ : Even n) (h₂ : m - n = 2) (h₃ : m * n = 288) (h₄ : n ≥ 2) (h₅₁ : m ≥ n + 2) : m < n + 3 := by
  --  by_contra h₅₂
  have h₅₃ : m ≥ n + 3 := by sorry
  have h₅₄ : m - n ≥ 3 := by sorry
  have h₅₅ : m - n = 2 := h₂
  --  omega
  hole