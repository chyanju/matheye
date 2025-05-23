theorem numbertheory_aoddbdiv4asqpbsqmod8eq1 (a : ℤ) (b : ℕ) (h₀ : Odd a) (h₁ : 4 ∣ b) : (a ^ 2 + (↑b : ℤ) ^ 2) % 8 = 1 :=
  by
  have h₂ : (a ^ 2 : ℤ) % 8 = 1 := by sorry
  have h₃ : ((b ^ 2 : ℕ) : ℤ) % 8 = 0 := by sorry
  have h₄ : (a ^ 2 + (b ^ 2 : ℤ)) % 8 = 1 := by sorry
  have h₅ : (a ^ 2 + b ^ 2) % 8 = 1 := by sorry
  exact h₅