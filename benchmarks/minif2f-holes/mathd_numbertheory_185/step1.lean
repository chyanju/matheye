import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_numbertheory_185 (n : ℕ) (h₀ : n % 5 = 3) : 2 * n % 5 = 1 :=
  by
  have h₁ : (2 * n) % 5 = (2 * (n % 5)) % 5 := by sorry
  have h₂ : (2 * n) % 5 = (2 * 3) % 5 := by sorry
  have h₃ : (2 * n) % 5 = 1 := by sorry
  --  rw [h₃] <;> norm_num
  hole