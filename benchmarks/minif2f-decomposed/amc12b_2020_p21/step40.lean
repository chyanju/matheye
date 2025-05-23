theorem h₂ (S : Finset ℕ) (h₀ : ∀ (n : ℕ), n ∈ S ↔ 0 < n ∧ ((↑n : ℝ) + 1000) / 70 = (↑⌊√(↑n : ℝ)⌋ : ℝ)) (h : 400 = 400 ∨ 400 = 470 ∨ 400 = 2290 ∨ 400 = 2360 ∨ 400 = 2430 ∨ 400 = 2500) : ⌊√400⌋ = 20 := by
  rw [Int.floor_eq_iff]
  constructor
  · norm_num [Real.le_sqrt, Real.sqrt_lt]
  ·
    norm_num [Real.le_sqrt, Real.sqrt_lt] <;>
      nlinarith [Real.sqrt_nonneg 400, Real.sq_sqrt (show 0 ≤ (400 : ℝ) by norm_num)]