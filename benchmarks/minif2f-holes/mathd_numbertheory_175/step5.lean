import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃ (h₁ : ∀ n ≥ 1, 6 ^ n % 10 = 6) (h₂ : 2 ^ 4 % 10 = 6) : 2 ^ 2010 % 10 = 4 :=
  by
  have h₄ : (2 ^ 2010 : ℕ) = (2 ^ 4) ^ 502 * 2 ^ 2 := by sorry
  --  rw [h₄]
  have h₅ : ((2 ^ 4 : ℕ) ^ 502 * 2 ^ 2 : ℕ) % 10 = 4 := by sorry
  --  exact h₅
  hole