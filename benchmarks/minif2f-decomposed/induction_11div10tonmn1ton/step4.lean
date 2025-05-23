theorem h₂ (n : ℕ) (h₁ : 10 ≡ -1 [ZMOD 11]) : 10 ^ n ≡ (-1) ^ n [ZMOD 11] := by
  calc
    (10 : ℤ) ^ n ≡ (-1 : ℤ) ^ n [ZMOD 11] := by simpa using h₁.pow n
    _ ≡ (-1 : ℤ) ^ n [ZMOD 11] := by rfl