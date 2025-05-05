import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- What is the smallest positive integer that satisfies the congruence $30x \equiv 42 \pmod{47}$? Show that it is 39.-/
theorem mathd_numbertheory_64 : IsLeast { x : ℕ | 30 * x ≡ 42 [MOD 47] } 39 := by
  refine' ⟨by decide, fun x => _⟩
  -- We need to show that 39 is the least element in the set { x : ℕ | 30 * x ≡ 42 [MOD 47] }
  simp only [Set.mem_setOf_eq, Nat.ModEq]
  intro h
  -- Simplify the condition 30 * x % 47 = 42 % 47
  norm_num [Nat.ModEq] at h
  -- Use the omega tactic to solve the inequality 39 ≤ x
  omega

