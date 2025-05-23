import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃ (n : ℕ) (hn : n > 0) (p : ℕ → ℕ) (h₀ : ∀ (x : ℕ), p x = x ^ 2 - x + 41) (h₁ : 1 < (p n).gcd (p (n + 1))) : (n + 1) ^ 2 - (n + 1) + 41 = n ^ 2 - n + 41 + 2 * n := by
  --  cases n with
  --  | zero => contradiction
  --  | succ n =>
  --    cases n with
  --    | zero => norm_num
  --    | succ n => simp [Nat.mul_succ, Nat.add_assoc, Nat.pow_succ, Nat.mul_add, Nat.add_mul] <;> ring_nf at * <;> omega
  hole