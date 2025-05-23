import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (h₁ : ∀ n ≥ 1, 6 ^ n % 10 = 6) (h₂ : 2 ^ 4 % 10 = 6) : 2 ^ 2010 = (2 ^ 4) ^ 502 * 2 ^ 2 := by
  --  norm_num [pow_add, pow_mul, pow_one, pow_two, pow_three, pow_succ] <;> ring_nf at * <;> norm_num at * <;> rfl
  hole