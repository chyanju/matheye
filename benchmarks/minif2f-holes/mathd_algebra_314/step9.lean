import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (n : ℕ) (h₀ : n = 11) (h₁ : 1 / 4 = 0) (h₂ : (1 / 4) ^ (n + 1) = 0) (h₃ : (1 / 4) ^ (n + 1) * 2 ^ (2 * n) = 0) : 1 / 4 = 0 := by -- norm_num <;> simp_all [Nat.div_eq_of_lt] <;> norm_num
  hole