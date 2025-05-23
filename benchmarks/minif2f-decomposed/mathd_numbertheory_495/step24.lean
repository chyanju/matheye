theorem h₁₁ (a b : ℕ) (h₀ : 0 < a ∧ 0 < b) (h₁ : a % 10 = 2) (h₂ : b % 10 = 4) (h₃ : a.gcd b = 6) (h₄ : 12 ≤ a) (h₅ : 24 ≤ b) (h₆ : a ≠ 0) (h₇ : b ≠ 0) (h₈ : a * b = 6 * a.lcm b) (h₉ : a = 12 → 54 ≤ b) (h₁₀ : a = 12 → 648 ≤ a * b) : a > 12 → 42 ≤ a := by
  intro h₁₁₁
  have h₁₁₂ : a ≥ 12 := by sorry
  have h₁₁₃ : a % 10 = 2 := h₁
  have h₁₁₄ : 6 ∣ a := by sorry
  by_contra h₁₁₅
  have h₁₁₆ : a < 42 := by sorry
  have h₁₁₇ : a > 12 := h₁₁₁
  have h₁₁₈ : a ≤ 41 := by sorry
  interval_cases a <;> norm_num at h₁₁₃ h₁₁₄ ⊢ <;> omega