import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₆ (m n : ℕ) (h₀ : m.gcd n = 6) (h₁ : m.lcm n = 126) (h₂ : m ≠ 0) (h₃ : n ≠ 0) (h₄ : m * n = 756) (h₅ : 6 ∣ m) : 6 ∣ n := by
  have h₆₁ : 6 ∣ Nat.gcd m n := by sorry
  --  exact Nat.dvd_trans h₆₁ (Nat.gcd_dvd_right m n)
  hole