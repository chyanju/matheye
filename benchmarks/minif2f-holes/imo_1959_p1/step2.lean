import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁ (n : ℕ) (h₀ : 0 < n) : (21 * n + 4).gcd (14 * n + 3) = (14 * n + 3).gcd (7 * n + 1) :=
  by
  have h₁₀ : Nat.gcd (21 * n + 4) (14 * n + 3) = Nat.gcd (14 * n + 3) (7 * n + 1) := by sorry
  --  exact h₁₀ <;> simp_all
  hole