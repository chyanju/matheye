import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂₇ (A M C : ℕ) (h₀ : A ≤ 9 ∧ M ≤ 9 ∧ C ≤ 9) (h₁ : 10 + 100 * C + 1000 * M + 10000 * A + (12 + 100 * C + 1000 * M + 10000 * A) = 123422) (h₂₁ : A ≤ 9) (h₂₂ : M ≤ 9) (h₂₃ : C ≤ 9) (h₂₄ : ofDigits 10 [0, 1, C, M, A] = 10 + 100 * C + 1000 * M + 10000 * A) (h₂₅ : ofDigits 10 [2, 1, C, M, A] = 12 + 100 * C + 1000 * M + 10000 * A) (h₂₆ : 10 + 100 * C + 1000 * M + 10000 * A + (12 + 100 * C + 1000 * M + 10000 * A) = 123422) : 22 + 200 * C + 2000 * M + 20000 * A = 123422 := by -- linarith
  hole