theorem mathd_numbertheory_495 (a b : ℕ) (h₀ : 0 < a ∧ 0 < b) (h₁ : a % 10 = 2) (h₂ : b % 10 = 4) (h₃ : a.gcd b = 6) : 108 ≤ a.lcm b :=
  by
  have h₄ : 12 ≤ a := by sorry
  have h₅ : 24 ≤ b := by sorry
  have h₆ : a ≠ 0 := by sorry
  have h₇ : b ≠ 0 := by sorry
  have h₈ : a * b = 6 * Nat.lcm a b := by sorry
  have h₉ : a = 12 → 54 ≤ b := by sorry
  have h₁₀ : a = 12 → 648 ≤ a * b := by sorry
  have h₁₁ : a > 12 → 42 ≤ a := by sorry
  have h₁₂ : a > 12 → 1008 ≤ a * b := by sorry
  have h₁₃ : 648 ≤ a * b := by sorry
  have h₁₄ : 108 ≤ Nat.lcm a b := by sorry
  exact h₁₄