import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₈ (a b c : ℕ) (h₀ : a ≤ 9 ∧ b ≤ 9 ∧ c ≤ 9) (h₁ : digits 10 (5 ^ 100 % 1000) = [c, b, a]) (h₂ : 5 ^ 100 % 1000 = 625) (h₃ : digits 10 (5 ^ 100 % 1000) = [5, 2, 6]) (h₄ : [c, b, a] = [5, 2, 6]) (h₅ : a = 6) (h₆ : b = 2) (h₇ : c = 5) : a + b + c = 13 := by -- -- subst_vars <;> norm_num
  hole