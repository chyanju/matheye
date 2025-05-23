theorem induction_11div10tonmn1ton (n : ℕ) : 11 ∣ 10 ^ n - (-1) ^ n :=
  by
  have h_main : (11 : ℤ) ∣ (10 : ℤ) ^ n - (-1 : ℤ) ^ n := by sorry
  have h_final : 11 ∣ 10 ^ n - (-1 : ℤ) ^ n := by sorry
  exact h_final