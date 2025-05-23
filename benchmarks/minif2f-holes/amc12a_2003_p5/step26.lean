import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄₁ (A M C : ℕ) (h₀ : A ≤ 9 ∧ M ≤ 9 ∧ C ≤ 9) (h₁ : 10 + 100 * C + 1000 * M + 10000 * A + (12 + 100 * C + 1000 * M + 10000 * A) = 123422) (h₂ : A = 6) (h₃₁ : A ≤ 9) (h₃₂ : M ≤ 9) (h₃₃ : C ≤ 9) (h₃₄ : ofDigits 10 [0, 1, C, M, A] = 10 + 100 * C + 1000 * M + 10000 * A) (h₃₅ : ofDigits 10 [2, 1, C, M, A] = 12 + 100 * C + 1000 * M + 10000 * A) (h₃₆ : 10 + 100 * C + 1000 * M + 10000 * A + (12 + 100 * C + 1000 * M + 10000 * A) = 123422) (h₃₇ : 22 + 200 * C + 2000 * M + 20000 * A = 123422) (h₃₈ : 200 * C + 2000 * M + 20000 * A = 123400) (h₃₉ : C + 10 * M + 100 * 6 = 617) (h₄₀ : C + 10 * M = 17) : M ≤ 1 := by
  --  by_contra h
  --  push_neg at h
  have h₄₂ : M ≥ 2 := by sorry
  have h₄₃ : C + 10 * M ≥ 20 := by sorry
  --  omega
  hole