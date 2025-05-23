import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (n : ℕ) (h₀ : 0 < n) (h₁ : (21 * n + 4).gcd (14 * n + 3) = (14 * n + 3).gcd (7 * n + 1)) : (14 * n + 3).gcd (7 * n + 1) = (7 * n + 1).gcd 1 :=
  by
  have h₂₁ : Nat.gcd (14 * n + 3) (7 * n + 1) = Nat.gcd (7 * n + 1) 1 := by sorry
  --  exact h₂₁
  hole