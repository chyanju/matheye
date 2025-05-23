theorem h₄₂ (n : ℕ) (h₀ : 0 < n) (h₁ : n.gcd 40 = 10) (h₂ : n.lcm 40 = 280) (h₃ h₄₁ : n * 40 = 2800) : n = 70 :=
  by
  have h₄₃ : n ≤ 70 := by sorry
  have h₄₄ : n ≥ 70 := by sorry
  omega