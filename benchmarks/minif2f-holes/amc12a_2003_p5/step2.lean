import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (A M C : ℕ) (h₀ : A ≤ 9 ∧ M ≤ 9 ∧ C ≤ 9) (h₁ : ofDigits 10 [0, 1, C, M, A] + ofDigits 10 [2, 1, C, M, A] = 123422) : A = 6 := by
  have h₂₁ : A ≤ 9 := h₀.1
  have h₂₂ : M ≤ 9 := h₀.2.1
  have h₂₃ : C ≤ 9 := h₀.2.2
  have h₂₄ : Nat.ofDigits 10 [0, 1, C, M, A] = 10 + 100 * C + 1000 * M + 10000 * A := by sorry
  have h₂₅ : Nat.ofDigits 10 [2, 1, C, M, A] = 12 + 100 * C + 1000 * M + 10000 * A := by sorry
  --  rw [h₂₄, h₂₅] at h₁
  have h₂₆ : 10 + 100 * C + 1000 * M + 10000 * A + (12 + 100 * C + 1000 * M + 10000 * A) = 123422 := by sorry
  have h₂₇ : 22 + 200 * C + 2000 * M + 20000 * A = 123422 := by sorry
  have h₂₈ : 200 * C + 2000 * M + 20000 * A = 123400 := by sorry
  have h₂₉ : C + 10 * M + 100 * A = 617 := by sorry
  have h₃₀ : A ≥ 1 := by sorry
  have h₃₁ : A ≤ 6 := by sorry
  --  --  --  interval_cases A <;> norm_num at h₂₉ ⊢ <;> (try omega) <;>
      (try {
          have h₃₆ : M ≤ 9 := h₀.2.1
          have h₃₇ : C ≤ 9 := h₀.2.2
          interval_cases M <;> norm_num at h₂₉ ⊢ <;> (try omega) <;>
            (try {interval_cases C <;> norm_num at h₂₉ ⊢ <;> omega
              })
        }) <;>
    omega
  hole