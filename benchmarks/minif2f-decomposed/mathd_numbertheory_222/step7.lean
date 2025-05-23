theorem h₇ (b : ℕ) (h₀ : Nat.lcm 120 b = 3720) (h₁ : Nat.gcd 120 b = 8) (h₂ h₅ : 120 * b = 29760) : b ≤ 248 := by
  by_contra h
  have h₈ : b ≥ 249 := by sorry
  have h₉ : 120 * b ≥ 120 * 249 := by sorry
  have h₁₀ : 120 * 249 = 29880 := by sorry
  have h₁₁ : 120 * b ≥ 29880 := by sorry
  have h₁₂ : 120 * b > 29760 := by sorry
  omega