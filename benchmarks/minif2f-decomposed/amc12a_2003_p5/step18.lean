theorem h₃ (A M C : ℕ) (h₀ : A ≤ 9 ∧ M ≤ 9 ∧ C ≤ 9) (h₁ : ofDigits 10 [0, 1, C, M, A] + ofDigits 10 [2, 1, C, M, A] = 123422) (h₂ : A = 6) : M = 1 := by
  have h₃₁ : A ≤ 9 := h₀.1
  have h₃₂ : M ≤ 9 := h₀.2.1
  have h₃₃ : C ≤ 9 := h₀.2.2
  have h₃₄ : Nat.ofDigits 10 [0, 1, C, M, A] = 10 + 100 * C + 1000 * M + 10000 * A := by sorry
  have h₃₅ : Nat.ofDigits 10 [2, 1, C, M, A] = 12 + 100 * C + 1000 * M + 10000 * A := by sorry
  rw [h₃₄, h₃₅] at h₁
  have h₃₆ : 10 + 100 * C + 1000 * M + 10000 * A + (12 + 100 * C + 1000 * M + 10000 * A) = 123422 := by sorry
  have h₃₇ : 22 + 200 * C + 2000 * M + 20000 * A = 123422 := by sorry
  have h₃₈ : 200 * C + 2000 * M + 20000 * A = 123400 := by sorry
  have h₃₉ : C + 10 * M + 100 * A = 617 := by sorry
  rw [h₂] at h₃₉
  have h₄₀ : C + 10 * M = 17 := by sorry
  have h₄₁ : M ≤ 1 := by sorry
  interval_cases M <;> norm_num at h₄₀ ⊢ <;> (try omega) <;>
      (try {
          have h₄₂ : C ≤ 9 := h₀.2.2
          interval_cases C <;> norm_num at h₄₀ ⊢ <;> (try omega)
        }) <;>
    omega