theorem h₁'' (a b c d : ℕ) (h₀ : a * b * c * d = 8!) (h₁ : a * b + a + b = 524) (h₂ : b * c + b + c = 146) (h₃ : c * d + c + d = 104) (h_fact : 8! = 40320) (h₁' : a * b + a + b = 524) : (a + 1) * (b + 1) = 525 := by
  calc
    (a + 1) * (b + 1) = a * b + a + b + 1 := by ring
    _ = 524 + 1 := by rw [h₁']
    _ = 525 := by norm_num