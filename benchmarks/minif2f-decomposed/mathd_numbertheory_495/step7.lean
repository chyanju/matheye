theorem h₅ (a b : ℕ) (h₀ : 0 < a ∧ 0 < b) (h₁ : a % 10 = 2) (h₂ : b % 10 = 4) (h₃ : a.gcd b = 6) (h₄ : 12 ≤ a) : 24 ≤ b := by
  by_contra h
  have h₅₁ : b ≤ 23 := by sorry
  have h₅₂ : b % 10 = 4 := h₂
  have h₅₃ : 6 ∣ b := by sorry
  interval_cases b <;> norm_num at h₅₂ h₅₃ ⊢ <;> omega