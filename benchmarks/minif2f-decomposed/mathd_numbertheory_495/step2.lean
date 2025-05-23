theorem h₄ (a b : ℕ) (h₀ : 0 < a ∧ 0 < b) (h₁ : a % 10 = 2) (h₂ : b % 10 = 4) (h₃ : a.gcd b = 6) : 12 ≤ a := by
  by_contra h
  have h₅ : a ≤ 11 := by sorry
  have h₆ : a % 10 = 2 := h₁
  have h₇ : 6 ∣ a := by sorry
  interval_cases a <;> norm_num at h₆ h₇ ⊢ <;> omega