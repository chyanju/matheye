theorem h₆ (b : ℕ) (h₀ : Nat.lcm 120 b = 3720) (h₁ : Nat.gcd 120 b = 8) (h₂ h₅ : 120 * b = 29760) : b = 248 :=
  by
  have h₇ : b ≤ 248 := by sorry
  interval_cases b <;> norm_num at h₅ ⊢ <;> try omega