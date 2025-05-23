import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (n : ℕ) (h₀ : 0 < n) (h₁ : (21 * n + 4).gcd (14 * n + 3) = (14 * n + 3).gcd (7 * n + 1)) (h₂ : (14 * n + 3).gcd (7 * n + 1) = (7 * n + 1).gcd 1) (h₃ : (7 * n + 1).gcd 1 = 1) : (21 * n + 4).gcd (14 * n + 3) = 1 := by
  --  rw [h₁]
  --  rw [h₂]
  --  rw [h₃] <;> simp_all [Nat.gcd_eq_right] <;> ring_nf at * <;> omega
  hole