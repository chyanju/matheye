import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (A M C : ℕ) (h₀ : A ≤ 9 ∧ M ≤ 9 ∧ C ≤ 9) (h₁ : ofDigits 10 [0, 1, C, M, A] + ofDigits 10 [2, 1, C, M, A] = 123422) (h₂ : A = 6) (h₃ : M = 1) : C = 7 := by
  have h₄₁ : A ≤ 9 := h₀.1
  have h₄₂ : M ≤ 9 := h₀.2.1
  have h₄₃ : C ≤ 9 := h₀.2.2
  have h₄₄ : Nat.ofDigits 10 [0, 1, C, M, A] = 10 + 100 * C + 1000 * M + 10000 * A := by sorry
  have h₄₅ : Nat.ofDigits 10 [2, 1, C, M, A] = 12 + 100 * C + 1000 * M + 10000 * A := by sorry
  --  rw [h₄₄, h₄₅] at h₁
  have h₄₆ : 10 + 100 * C + 1000 * M + 10000 * A + (12 + 100 * C + 1000 * M + 10000 * A) = 123422 := by sorry
  have h₄₇ : 22 + 200 * C + 2000 * M + 20000 * A = 123422 := by sorry
  have h₄₈ : 200 * C + 2000 * M + 20000 * A = 123400 := by sorry
  have h₄₉ : C + 10 * M + 100 * A = 617 := by sorry
  --  rw [h₂, h₃] at h₄₉
  --  --  norm_num at h₄₉ ⊢ <;> omega
  hole