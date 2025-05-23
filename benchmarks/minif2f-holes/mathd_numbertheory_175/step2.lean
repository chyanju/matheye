import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₀  : 2 ^ 2010 % 10 = 4 :=
  by
  have h₁ : ∀ n : ℕ, n ≥ 1 → 6 ^ n % 10 = 6 := by sorry
  have h₂ : (2 ^ 4 : ℕ) % 10 = 6 := by sorry
  have h₃ : (2 ^ 2010 : ℕ) % 10 = 4 := by sorry
  --  exact h₃
  hole