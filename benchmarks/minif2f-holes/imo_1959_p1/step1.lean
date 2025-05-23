import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem imo_1959_p1 (n : ℕ) (h₀ : 0 < n) : (21 * n + 4).gcd (14 * n + 3) = 1 :=
  by
  have h₁ : Nat.gcd (21 * n + 4) (14 * n + 3) = Nat.gcd (14 * n + 3) (7 * n + 1) := by sorry
  have h₂ : Nat.gcd (14 * n + 3) (7 * n + 1) = Nat.gcd (7 * n + 1) 1 := by sorry
  have h₃ : Nat.gcd (7 * n + 1) 1 = 1 := by sorry
  have h₄ : Nat.gcd (21 * n + 4) (14 * n + 3) = 1 := by sorry
  --  exact h₄
  hole