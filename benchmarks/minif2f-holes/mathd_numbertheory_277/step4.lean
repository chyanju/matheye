import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (m n : ℕ) (h₀ : m.gcd n = 6) (h₁ : m.lcm n = 126) (h₂ : m ≠ 0) (h₃ : n ≠ 0) : m * n = 756 :=
  by
  have h₄₁ : m * n = Nat.gcd m n * Nat.lcm m n := by sorry
  --  rw [h₄₁]
  --  rw [h₀, h₁] <;> norm_num
  hole