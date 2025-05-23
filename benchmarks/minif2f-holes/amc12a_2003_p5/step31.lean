import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄₄ (A M C : ℕ) (h₀ : A ≤ 9 ∧ M ≤ 9 ∧ C ≤ 9) (h₁ : ofDigits 10 [0, 1, C, M, A] + ofDigits 10 [2, 1, C, M, A] = 123422) (h₂ : A = 6) (h₃ : M = 1) (h₄₁ : A ≤ 9) (h₄₂ : M ≤ 9) (h₄₃ : C ≤ 9) : ofDigits 10 [0, 1, C, M, A] = 10 + 100 * C + 1000 * M + 10000 * A := by
  --  --  simp [Nat.ofDigits, List.cons, List.append, List.map, List.foldr, Nat.mul_add, Nat.add_mul] <;> ring_nf <;>
      norm_num <;>
    omega
  hole