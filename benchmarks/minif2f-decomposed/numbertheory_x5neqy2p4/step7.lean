theorem h_final (x y : ℤ) (h_main : (x ^ 5 - (y ^ 2 + 4)) % 11 ≠ 0) : x ^ 5 ≠ y ^ 2 + 4 := by
  intro h_contra
  have h₁ : (x ^ 5 - (y ^ 2 + 4) : ℤ) % 11 = 0 := by sorry
  have h₂ : (x ^ 5 - (y ^ 2 + 4) : ℤ) % 11 ≠ 0 := h_main
  contradiction