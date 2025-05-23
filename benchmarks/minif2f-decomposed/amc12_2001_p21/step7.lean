theorem h₅ (a b c d : ℕ) (h₀ : a * b * c * d = 8!) (h₁ : a * b + a + b = 524) (h₂ : b * c + b + c = 146) (h₃ : c * d + c + d = 104) (h_fact : 8! = 40320) (h_ab : (a + 1) * (b + 1) = 525) (h₄ : a + 1 ∣ 525) : a + 1 = 1 ∨
    a + 1 = 3 ∨
      a + 1 = 5 ∨
        a + 1 = 7 ∨
          a + 1 = 15 ∨ a + 1 = 21 ∨ a + 1 = 25 ∨ a + 1 = 35 ∨ a + 1 = 75 ∨ a + 1 = 105 ∨ a + 1 = 175 ∨ a + 1 = 525 :=
  by
  have h₅₁ : a + 1 ∣ 525 := h₄
  have h₅₂ : a + 1 ≤ 525 := Nat.le_of_dvd (by norm_num) h₅₁
  interval_cases a + 1 <;> norm_num at h₅₁ ⊢ <;> (try omega) <;>
      (try
          {norm_num at h₅₁ ⊢ <;> (try omega) <;>
            (try {
                rcases h₅₁ with ⟨k, h₅₁⟩
                have h₅₃ : k ≤ 525 := by nlinarith
                interval_cases k <;> norm_num at h₅₁ ⊢ <;> omega
              })
        }) <;>
    (try omega)