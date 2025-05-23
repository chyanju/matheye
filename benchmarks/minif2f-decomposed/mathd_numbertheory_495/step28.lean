theorem h₁₁₆ (a b : ℕ) (h₀ : 0 < a ∧ 0 < b) (h₁ : a % 10 = 2) (h₂ : b % 10 = 4) (h₃ : a.gcd b = 6) (h₄ : 12 ≤ a) (h₅ : 24 ≤ b) (h₆ : a ≠ 0) (h₇ : b ≠ 0) (h₈ : a * b = 6 * a.lcm b) (h₉ : a = 12 → 54 ≤ b) (h₁₀ : a = 12 → 648 ≤ a * b) (h₁₁₁ : a > 12) (h₁₁₂ : a ≥ 12) (h₁₁₃ : a % 10 = 2) (h₁₁₅ : 6 ∣ a.gcd b) : 6 ∣ a := by
  have h₁₁₆₁ : 6 ∣ Nat.gcd a b := h₁₁₅
  have h₁₁₆₂ : 6 ∣ a := Nat.dvd_trans h₁₁₆₁ (Nat.gcd_dvd_left a b)
  exact h₁₁₆₂