theorem h_main (n : ℕ) : 11 ∣ 10 ^ n - (-1) ^ n :=
  by
  have h₁ : (10 : ℤ) ≡ (-1 : ℤ) [ZMOD 11] := by sorry
  have h₂ : (10 : ℤ) ^ n ≡ (-1 : ℤ) ^ n [ZMOD 11] := by sorry
  have h₃ : (11 : ℤ) ∣ (10 : ℤ) ^ n - (-1 : ℤ) ^ n := by sorry
  exact h₃