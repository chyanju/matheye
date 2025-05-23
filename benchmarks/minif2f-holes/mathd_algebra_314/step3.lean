import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (n : ℕ) (h₀ : n = 11) (h₁ : 1 / 4 = 0) : (1 / 4) ^ (n + 1) = 0 := by
  --  rw [h₁]
  have h₂₁ : n + 1 > 0 := by sorry
  have h₂₂ : 0 ^ (n + 1) = 0 := by sorry
  --  simp_all [Nat.zero_pow] <;> simp_all
  hole